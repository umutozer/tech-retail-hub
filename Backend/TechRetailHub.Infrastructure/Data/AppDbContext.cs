using Microsoft.EntityFrameworkCore;
using TechRetailHub.Core.Entities;

namespace TechRetailHub.Infrastructure.Data;

public class AppDbContext : DbContext {
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options) { }

    public DbSet<Category> Categories { get; set; }
    public DbSet<Brand> Brands { get; set; }
    public DbSet<Product> Products { get; set; }
    public DbSet<Specification> Specifications { get; set; }
    public DbSet<User> Users { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder) {
        modelBuilder.Entity<Product>().HasIndex(p => p.Slug).IsUnique();
        modelBuilder.Entity<Category>().HasIndex(c => c.Slug).IsUnique();
        modelBuilder.Entity<Specification>().HasIndex(s => new { s.ProductId, s.SpecKey }).IsUnique();
    }
}