<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRUD Eloquent Laravel - www.malasngoding.com</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="card mt-5">
            <div class="card-header text-center">
                CRUD Data Pegawai - <a href="https://www.malasngoding.com/category/laravel" target="_blank">www.malasngoding.com</a>
            </div>
            <div class="card-body">
                <a href="/pegawai2/tambah" class="btn btn-primary">Input Pegawai Baru</a>
                <a href="/pegawai2/trash" class="btn btn-secondary">Tong Sampah</a>
                <br/>
                <br/>
                <table class="table table-bordered table-hover table-striped">
                    <thead>
                        <tr>
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>OPSI</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if($pegawai2->count() > 0)
                            @foreach($pegawai2 as $p)
                            <tr>
                                <td>{{ $p->nama }}</td>
                                <td>{{ $p->alamat }}</td>
                                <td>
                                    <a href="/pegawai2/edit/{{ $p->id }}" class="btn btn-warning">Edit</a>
                                    <a href="/pegawai2/hapus/{{ $p->id }}" class="btn btn-danger">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="3" class="text-center">Tidak ada data pegawai ditemukan.</td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            </div>
            <div>
                @if($pegawai2->count() > 0)
                    {{ $pegawai2->links('pagination::bootstrap-4') }}
                @endif
            </div>
        </div>
    </div>
</body>
</html>
