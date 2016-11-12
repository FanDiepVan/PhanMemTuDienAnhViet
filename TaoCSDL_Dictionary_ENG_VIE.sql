create database ENG_VIE_DICTIONARY;
use ENG_VIE_DICTIONARY;

create table TaiKhoan (Users varchar(50) PRIMARY KEY,
						Passwd varchar(50) NOT NULL,
						NgaySinh date NOT NULL,
						SDT varchar(15),
						Email varchar(50));

create table User_PhatAm (ID_UserPhatAm char(10) PRIMARY KEY,
							ThoiGianPhatAm datetime NOT NULL,
							Users varchar(50) NOT NULL,
							ID_W char(10) NOT NULL,
							Link_UserPhatAm varchar(50) NOT NULL);

create table Dictionary (ID_W char(10) PRIMARY KEY,
							Word varchar(20) NOT NULL,
							Pronun char (20) NOT NULL,
							Mean nvarchar (50) NOT NULL,
							Link varchar(50) NOT NULL);

create table Login (ID_Login char(10) PRIMARY KEY,
					Users varchar(50) NOT NULL,
					TGLogin datetime NOT NULL);

create table User_Vocabulary (ID_Voca char(10) PRIMARY KEY,
								Voca varchar(20) NOT NULL,
								Mean_Voca nvarchar(50) NOT NULL,
								Date_Voca datetime NOT NULL,
								Users varchar(50) NOT NULL,
								ID_W char(10) NOT NULL);
								
create table PhatAm (ID_PhatAm char(10) PRIMARY KEY,
						ID_W char(10) NOT NULL,
						Link_PhatAm varchar(50) NOT NULL);

create table DeXuatChinhSua (ID_DXCS char(10) PRIMARY KEY,
								ThoiGian datetime NOT NULL,
								NoiDungDeXuat nvarchar(500) NOT NULL,
								Users varchar(50) NOT NULL);

create table ThangTrinhDo (ID_ThangTrinhDo char(10) PRIMARY KEY,
							ThoiGian datetime NOT NULL,
							TrinhDo nvarchar(30) NOT NULL,
							Users varchar(50) NOT NULL);

create table TraCuuThongTin (ID_TraCuuThongTin char(10) PRIMARY KEY,
								NoiDung nvarchar(500)NOT NULL);

create table PhanHoi (ID_PhanHoi char(10) PRIMARY KEY,
						NoiDung nvarchar(500)NOT NULL);

create table TaiLieu (ID_TaiLieu char(10) PRIMARY KEY,
						TenTaiLieu nvarchar(30) NOT NULL,
						DinhDang varchar(4) NOT NULL);

create table Grammar (ID_Gr char(10) PRIMARY KEY, 
						Name_Gr varchar(30) NOT NULL,
						Grammar nvarchar(500)NOT NULL);

create table TroGiup (ID_TroGiup char(10) PRIMARY KEY,
						NoiDungTroGiup nvarchar(500)NOT NULL);

create table BaiHoc (ID_BaiHoc char(10) PRIMARY KEY,
						NoiDungBaiHoc nvarchar(500)NOT NULL);

--Khóa ngoại tham chiếu đến bảng Users:
ALTER TABLE User_PhatAm ADD CONSTRAINT KN_User_PhatAm_User FOREIGN KEY (Users) REFERENCES TaiKhoan (Users);
ALTER TABLE Login ADD CONSTRAINT KN_Login_User FOREIGN KEY (Users) REFERENCES TaiKhoan (Users);
ALTER TABLE User_Vocabulary ADD CONSTRAINT KN_User_Vocabulary_User FOREIGN KEY (Users) REFERENCES TaiKhoan (Users);
ALTER TABLE DeXuatChinhSua ADD CONSTRAINT KN_DeXuatChinhSua_User FOREIGN KEY (Users) REFERENCES TaiKhoan (Users);
ALTER TABLE ThangTrinhDo ADD CONSTRAINT KN_ThangTrinhDo_User FOREIGN KEY (Users) REFERENCES TaiKhoan (Users);

--Khóa ngoại tham chiếu đến bảng Dictionary:
ALTER TABLE User_PhatAm ADD CONSTRAINT KN_User_PhatAm_Dictionary FOREIGN KEY (ID_W) REFERENCES Dictionary (ID_W);
ALTER TABLE User_Vocabulary ADD CONSTRAINT KN_User_Vocabulary_Dictionary FOREIGN KEY (ID_W) REFERENCES Dictionary (ID_W);
ALTER TABLE PhatAm ADD CONSTRAINT KN_PhatAm_Dictionary FOREIGN KEY (ID_W) REFERENCES Dictionary (ID_W);

