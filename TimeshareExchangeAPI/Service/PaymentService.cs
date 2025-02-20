﻿using AutoMapper;
using Newtonsoft.Json.Linq;
using TimeshareExchangeAPI.Entities;
using TimeshareExchangeAPI.Repository.Generic;
using TimeshareExchangeAPI.Repository.Models;
using TimeshareExchangeAPI.Service.IService;

namespace TimeshareExchangeAPI.Service
{
    public class PaymentService : IPaymentService
    {
        private readonly IGenericRepository<Payment> _paymentRepository;
        private readonly IMapper _mapper;

        public PaymentService(IGenericRepository<Payment> repositoryBase, IMapper mapper)
        {
            _paymentRepository = repositoryBase;
            _mapper = mapper;

        }



        //Get ALL
        public ResponseModel<List<PaymentModel>> GetAll()
        {
            var entities = _paymentRepository.GetAll().ToList();
            var response = _mapper.Map<List<PaymentModel>>(entities.ToList());
            return new ResponseModel<List<PaymentModel>>
            {
                Data = response,
                MessageError = "",
                StatusCode = StatusCodes.Status200OK
            };
        }





        //GetID
        public ResponseModel<Payment> GetSingle(string id)
        {
            var AccountEntity = _paymentRepository.GetSingle(x => x.PayId.Equals(id));
            var responseAccountModel = _mapper.Map<PaymentModel>(AccountEntity);
            return new ResponseModel<Payment>
            {
                Data = AccountEntity,
                MessageError = "",
                StatusCode = StatusCodes.Status200OK
            };
        }

        public ResponseModel<List<PaymentModel>> GetByMemberID(string id)
        {
            var paymentEntity = _paymentRepository.Get(x => x.MemberId.Equals(id));

            var responsepaymentModel = _mapper.Map<List<PaymentModel>>(paymentEntity);
            return new ResponseModel<List<PaymentModel>>
            {
                Data = responsepaymentModel,
                MessageError = "",
                StatusCode = StatusCodes.Status200OK
            };
        }


        public ResponseModel<List<PaymentModel>> GetByBookingID(string id)
        {
            var paymentEntity = _paymentRepository.Get(x => x.BookingId.Equals(id));

            var responsepaymentModel = _mapper.Map<List<PaymentModel>>(paymentEntity);
            return new ResponseModel<List<PaymentModel>>
            {
                Data = responsepaymentModel,
                MessageError = "",
                StatusCode = StatusCodes.Status200OK
            };
        }


        /*   public ResponseModel<Payment> Createpayment(PaymentModel paymentModel
               )
           {
               var userEntity = _mapper.Map<Payment>(paymentModel); 

               userEntity.PayId = Guid.NewGuid().ToString();
               _paymentRepository.Create(userEntity);

               return new ResponseModel<Payment>
               {
                   Data = userEntity,
                   MessageError = "",
                   StatusCode = StatusCodes.Status200OK
               };
           }*/


        public ResponseModel<Payment> CreatePayment(PaymentRequestModel payment)
        {
            var userEntity = _mapper.Map<Payment>(payment);
            userEntity.Date = DateTime.Now;
            userEntity.PayId = Guid.NewGuid().ToString();
            _paymentRepository.Create(userEntity);

            return new ResponseModel<Payment>
            {
                Data = userEntity,
                MessageError = "",
                StatusCode = StatusCodes.Status200OK
            };
        }

        public ResponseModel UpdateSta(String id, PaymentSta status)
        {
            var Voucher = _paymentRepository.GetSingle(x => id.Equals(x.PayId));
            if (Voucher == null)
            {
                return new ResponseModel<PaymentSta>
                {
                    MessageError = "Khong tim thay",
                    StatusCode = StatusCodes.Status404NotFound
                };
            }
            _mapper.Map(status, Voucher); 
            Voucher.PayId = id;
            _paymentRepository.Update(Voucher);
            return new ResponseModel<Payment>
            {
                Data = Voucher,
                StatusCode = StatusCodes.Status200OK
            };
        }

    }
}




