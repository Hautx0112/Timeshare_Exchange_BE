﻿namespace TimeshareExchangeAPI.Repository.Models
{
    public class TimeshareModel
    {
        public string Id { get; set; } = null!;

        public string? RealestateId { get; set; }

        public string? MemberId { get; set; }
        public double Price { get; set; }

        public DateTime? StartDay { get; set; } 
        public DateTime? CreatedDay { get; set; }

        public DateTime? EndDay { get; set; }

        public string? Status { get; set; }

    }

    public class TimeshareRequestModel
    {
        public string? RealestateId { get; set; }

        public string? MemberId { get; set; }
        public double Price { get; set; }

        public DateTime? StartDay { get; set; }

        public DateTime? EndDay { get; set; }

        public string? Status { get; set; }
    }
    public class Timesharesta
    {
        public string? Status { get; set; }
    }
}
