﻿using TimeshareExchangeAPI.Entities;
using TimeshareExchangeAPI.Repository.Models;

namespace TimeshareExchangeAPI.Service.IService
{

    public interface IPaymentService
    {
        public ResponseModel<List<PaymentModel>> GetAll();

        public ResponseModel<Payment> GetSingle(string id);

        public ResponseModel<List<PaymentModel>> GetByMemberID(string id);

        public ResponseModel UpdateSta(String id, PaymentSta status);

        public ResponseModel<List<PaymentModel>> GetByBookingID(string id);

        public ResponseModel<Payment> CreatePayment(PaymentRequestModel payment);
    }
}