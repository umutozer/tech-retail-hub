using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TechRetailHub.Infrastructure.Data;
using TechRetailHub.Core.Entities;
using Microsoft.AspNetCore.Authorization;

namespace TechRetailHub.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductController : ControllerBase {
    private readonly AppDbContext _context;
    public ProductController(AppDbContext context) => _context = context;

    [HttpGet]
    public async Task<IActionResult> GetAll() => Ok(await _context.Products.Include(p => p.Category).Include(p => p.Brand).ToListAsync());

    [HttpGet("{slug}")]
    public async Task<IActionResult> GetBySlug(string slug) {
        var product = await _context.Products
            .Include(p => p.Category)
            .Include(p => p.Brand)
            .Include(p => p.Specifications)
            .FirstOrDefaultAsync(p => p.Slug == slug);
        return product == null ? NotFound() : Ok(product);
    }

    [Authorize]
    [HttpPost]
    public async Task<IActionResult> Create(Product product) {
        _context.Products.Add(product);
        await _context.SaveChangesAsync();
        return CreatedAtAction(nameof(GetBySlug), new { slug = product.Slug }, product);
    }
}