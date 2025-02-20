﻿using System.Diagnostics.Contracts;
using TimeshareExchangeAPI.Entities;

namespace TimeshareExchangeAPI.Repository.Models
{
    public class RealestateModel
    {
        public string Id { get; set; } = null!;
        public string? memberID { get; set; }
        public string? Name { get; set; }
        public DateTime create_day { get; set; }
        public string? Location { get; set; }

        public string? Facility { get; set; }

        public string? FeedbackId { get; set; }
        public string? Description { get; set; }

        public string? Photo { get; set; }
        public double? Price { get; set; }
        public string? Status { get; set; }
        public virtual ICollection<Timeshare> Timeshares { get; set; } = new List<Timeshare>();

    }
    public class RealestateRequestModel
    {
        public string? Name { get; set; }
        public string? memberID { get; set; }
        public string? Location { get; set; }
        public string? Description { get; set; }
        public DateTime create_day { get; set; }

        public string? Facility { get; set; }
        public double? Price { get; set; }
        public IFormFile[]? imageFiles { get; set; }

    }

    public class RealestateSta
    {
        public string? Status { get; set; }
    }

}
