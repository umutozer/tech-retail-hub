namespace TechRetailHub.Core.Entities;

public class Category {
    public int Id { get; set; }
    public string Name { get; set; } = null!;
    public string Slug { get; set; } = null!;
    public string? Description { get; set; }
    public string? ImageUrl { get; set; }
    public List<Product> Products { get; set; } = new();
}

public class Brand {
    public int Id { get; set; }
    public string Name { get; set; } = null!;
    public string? LogoUrl { get; set; }
    public List<Product> Products { get; set; } = new();
}

public class Product {
    public int Id { get; set; }
    public int CategoryId { get; set; }
    public int BrandId { get; set; }
    public string Name { get; set; } = null!;
    public string Slug { get; set; } = null!;
    public string? ShortDesc { get; set; }
    public string? LongDesc { get; set; }
    public decimal Price { get; set; }
    public decimal? DiscountPrice { get; set; }
    public int Stock { get; set; }
    public bool Featured { get; set; }
    public string? Images { get; set; } // JSON stored as string
    public Category Category { get; set; } = null!;
    public Brand Brand { get; set; } = null!;
    public List<Specification> Specifications { get; set; } = new();
}

public class Specification {
    public int Id { get; set; }
    public int ProductId { get; set; }
    public string SpecKey { get; set; } = null!;
    public string SpecValue { get; set; } = null!;
}

public class User {
    public int Id { get; set; }
    public string Email { get; set; } = null!;
    public string PasswordHash { get; set; } = null!;
    public string FullName { get; set; } = null!;
    public string Role { get; set; } = "Admin";
}