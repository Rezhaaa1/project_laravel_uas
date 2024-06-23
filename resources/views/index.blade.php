<!DOCTYPE html>
<html>
<head>
    <title>CRUD</title>
    <!-- AdminLTE CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/3.1.0/css/adminlte.min.css">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style type="text/css">
        .pagination li {
            margin: 0 5px;
        }

        table {
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        h2, h3 {
            text-align: center;
        }

        .btn-action {
            margin-right: 5px;
        }
    </style>
</head>

<body class="hold-transition sidebar-mini layout-fixed">

<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            
        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="#" class="brand-link">
            <span class="brand-text font-weight-light">Laravel Elta</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="/pegawai" class="nav-link">
                            <i class="nav-icon fas fa-user"></i>
                            <p>Data Pegawai</p>
                        </a>
                    </li>
                    <li class="nav-item">
                     <a href="/pegawai/tambah" class="nav-link">
                    <i class="fas fa-plus"></i> Tambah Pegawai
                    </a>
                     </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content">
            <div class="container-fluid">
                <h3>Data Pegawai</h3>

                
                <form action="/pegawai/cari" method="GET">
                    <input type="text" name="cari" placeholder="Cari Pegawai .." value="{{ old('cari') }}">
                    <input type="submit" value="CARI">
                </form>

                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Data Pegawai</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-bordered table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Nama</th>
                                    <th>Jabatan</th>
                                    <th>Umur</th>
                                    <th>Alamat</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($pegawai as $p)
                                <tr>
                                    <td>{{ $p->pegawai_nama }}</td>
                                    <td>{{ $p->pegawai_jabatan }}</td>
                                    <td>{{ $p->pegawai_umur }}</td>
                                    <td>{{ $p->pegawai_alamat }}</td>
                                    <td>
                                        <a href="/pegawai/edit/{{ $p->pegawai_id }}" class="btn btn-warning btn-action"><i class="fas fa-edit"></i> Edit</a>
                                        <a href="/pegawai/hapus/{{ $p->pegawai_id }}" class="btn btn-danger btn-action" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')"><i class="fas fa-trash"></i> Hapus</a>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
                        <div class="d-flex justify-content-between">
                            <div>
                                Halaman : {{ $pegawai->currentPage() }} <br/>
                                Jumlah Data : {{ $pegawai->total() }} <br/>
                                Data Per Halaman : {{ $pegawai->perPage() }} <br/>
                            </div>
                            <div>
                                {{ $pegawai->links('pagination::bootstrap-4') }}
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.card -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content
