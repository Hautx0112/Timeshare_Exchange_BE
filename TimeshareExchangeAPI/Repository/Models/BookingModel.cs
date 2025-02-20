﻿using TimeshareExchangeAPI.Entities;

namespace TimeshareExchangeAPI.Repository.Models
{
    public class BookingModel
    {
        public string Id { get; set; } = null!;

        public string? TimeshareId { get; set; }
        public string? Phone { get; set; }
        public string? FullName { get; set; }
        public string? PaymentID { get; set; }

        public DateTime? StartDay { get; set; }

        public DateTime? EndDay { get; set; }

        public string? MemberId { get; set; }


        public int? Amount { get; set; }

        public int? Adult { get; set; }

        public int? Children { get; set; }
        public DateTime? CreatedDay { get; set; }

        public int? Room { get; set; }
        public string? Status { get; set; }

    }
    public class BookingRequestModel
    {
        public string? Phone { get; set; }
        public string? FullName { get; set; }
        public string? PaymentID { get; set; }


        public string? TimeshareId { get; set; }

        public DateTime? StartDay { get; set; }

        public DateTime? EndDay { get; set; }

        public string? MemberId { get; set; }


        public int? Amount { get; set; }

        public int? Adult { get; set; }

        public int? Children { get; set; }

        public int? Room { get; set; }
        public string? Status { get; set; }

    }
}
