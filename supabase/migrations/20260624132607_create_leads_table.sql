create table if not exists leads (
  id bigint generated always as identity primary key,
  created_at timestamptz default now(),
  ho_ten text not null,
  so_dien_thoai text not null,
  email text,
  ten_phong_kham text not null,
  chuyen_khoa text,
  tinh_thanh text,
  so_bac_si text,
  phan_mem_hien_tai text,
  tinh_nang_quan_tam text
);

alter table leads enable row level security;

create policy "allow public insert"
  on leads for insert
  to anon
  with check (true);
