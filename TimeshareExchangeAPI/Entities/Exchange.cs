﻿using System;
using System.Collections.Generic;

namespace TimeshareExchangeAPI.Entities;

public partial class Exchange
{
    public string ExchangeId { get; set; }
    public string? MemberId1 { get; set; }
    public string? MemberId2 { get; set; }

    public string? TimeshareId1 { get; set; }
    public string? TimeshareId2 { get; set; }

    public DateTime? StartDay { get; set; }

    public DateTime? EndDay { get; set; }

    public DateTime? ExchangeDay { get; set; }
    public string? Status { get; set; }

    public virtual Account? Member { get; set; }

    public virtual Timeshare? Timeshare { get; set; }
}
