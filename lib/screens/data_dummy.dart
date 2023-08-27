import 'package:flutter/material.dart';

List<Map<String, dynamic>> dataProduk = [
  {
    'id': 1,
    'produk': 'Beras Enak 10kg',
    'image': 'assets/dashboard/beras_enak.png',
    'harga': 110000,
    'diskon': 120000
  },
  {
    'id': 2,
    'produk': 'Beras Enak 5kg',
    'image': 'assets/dashboard/Frame_5.png',
    'harga': 57500,
    'diskon': 60000
  },
  {
    'id': 3,
    'produk': 'Minyak Goreng...',
    'image': 'assets/dashboard/minyak_goreng.png',
    'harga': 19500,
    'diskon': 23000
  },
  {
    'id': 4,
    'produk': 'Sunlight',
    'image': 'assets/dashboard/sunlight_hijau.png',
    'harga': 15000,
    'diskon': 15500
  },
  {
    'id': 5,
    'produk': 'Telur Ayam 1kg',
    'image': 'assets/dashboard/telor_ayam.png',
    'harga': 27000,
    'diskon': 29000
  },
  {
    'id': 6,
    'produk': 'Gulaku Premium',
    'image': 'assets/dashboard/gulaku_kuning.png',
    'harga': 15500,
    'diskon': 16500
  },
  {
    'id': 7,
    'produk': 'Palmia Margarine',
    'image': 'assets/dashboard/palmia_margarine.png',
    'harga': 7500,
    'diskon': 16500
  },
  {
    'id': 8,
    'produk': 'Minyak Goreng...',
    'image': 'assets/dashboard/dus_minyak.png',
    'harga': 196000,
    'diskon': 300000
  },
  {
    'id': 9,
    'produk': 'Telur Bebek',
    'image': 'assets/dashboard/telor_bebek.png',
    'harga': 2500,
    'diskon': 29000
  },
];

List<Map<String, dynamic>> cartList = [
  {
    'produk': 'Minyak Goreng...',
    'image': 'assets/dashboard/dus_minyak.png',
    'harga': 'Rp.196.000',
    'diskon': 'Rp.300.000'
  },
  {
    'produk': 'Telur Bebek',
    'image': 'assets/dashboard/telor_bebek.png',
    'harga': 'Rp.32.500',
    'diskon': 'Rp.29.000'
  },
];

List<Map<String, dynamic>> cartProduct = [];

List<Map<String, dynamic>> checkoutList = [];

List<Map<String, dynamic>> shippingCostList = [
  {
    'id': '1',
    'name': 'Cod',
    'cost': 10000,
  },
  {
    'id': '2',
    'name': 'Pickup ke toko',
    'cost': 0,
  },
  {
    'id': '3',
    'name': 'Fast flash',
    'cost': 150000,
  }
];

List<Map<String, dynamic>> orderList = [
  {
    'id': 1,
    'produk': 'Telur Bebek',
    'image': 'assets/dashboard/telor_bebek.png',
    'qty': 1,
    'total': 29000,
    'status': 'Selesai',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'bca',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
  {
    'id': 2,
    'produk': 'Telur Bebek Premium',
    'image': 'assets/dashboard/telor_bebek.png',
    'qty': 1,
    'total': 40000,
    'status': 'Selesai',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'bsm',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
  {
    'id': 3,
    'produk': 'Telur Bebek Murah Meriah',
    'image': 'assets/dashboard/telor_bebek.png',
    'qty': 1,
    'total': 10000,
    'status': 'Selesai',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'bni',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
  {
    'id': 4,
    'produk': 'Palmia Margarine',
    'image': 'assets/dashboard/palmia_margarine.png',
    'qty': 2,
    'total': 15000,
    'status': 'Dibatalkan',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'mandiri',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
  {
    'id': 5,
    'produk': 'Gulaku Kuning',
    'image': 'assets/dashboard/gulaku_kuning.png',
    'qty': 1,
    'total': 15500,
    'status': 'Dibatalkan',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'bca',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
  {
    'id': 6,
    'produk': 'Gulaku Kuning',
    'image': 'assets/dashboard/gulaku_kuning.png',
    'qty': 2,
    'total': 31000,
    'status': 'Order Berjalan',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'bca',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
  {
    'id': 7,
    'produk': 'Telur Bebek Murah Meriah',
    'image': 'assets/dashboard/telor_bebek.png',
    'qty': 1,
    'total': 10000,
    'status': 'Order Berjalan',
    'invoice': 'igbiuiu87688hjbjh',
    'pengiriman': 'Pos',
    'alamat':
        'Konohagakure Jl.GreenLine No.112 Rt/Rw 009/002, Kel.Atlantis, Kec.Pacific atas',
    'pembayaran': 'bni',
    'biaya admin': '0',
    'biaya pengiriman': '0',
  },
];
