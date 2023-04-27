CREATE DATABASE banbanhkem;
use banbanhkem;
-- --
/*==============================typeOfCake=====================================*/
create table typeOfCake(idType char (4) not null PRIMARY key, name varchar(40));
-- --
INSERT INTO typeOfCake VALUES ('LB01', 'Bánh hoa');
INSERT INTO typeOfCake VALUES ('LB02', 'Bánh trang trí con thú');
INSERT INTO typeOfCake VALUES ('LB03', 'Bánh trái cây');
INSERT INTO typeOfCake VALUES ('LB04', 'Bánh nhân vật hoạt hình');
INSERT INTO typeOfCake VALUES ('LB05', 'Bánh hoa mousse');
INSERT INTO typeOfCake VALUES ('LB06', 'Bánh maccaron và socola');
INSERT INTO typeOfCake VALUES ('LB07', 'Bánh hình lạ mắt');
INSERT INTO typeOfCake VALUES ('LB08', 'Bánh trang trí đơn giản');

/*==============================products=====================================*/
create table products(idProduct char(4) not null PRIMARY KEY, idType char(4), productName LONGTEXT,
										size varchar(10), weight int, description longtext, introduction longtext, price float, STATUS tinyint(4) DEFAULT 0,
										CONSTRAINT f_mlb FOREIGN KEY(idType) REFERENCES typeOfCake(idType));
-- --
-- --
INSERT INTO products VALUES ('B001', 'LB01','Bánh cánh đồng hoa', 'Vừa', 500,
"Bánh kem phong cách hoa Hàn Quốc, ngon và đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products  VALUES ('B002','LB01', 'Bánh hoa hồng kem dâu tây', 'Vừa', 500,"Bánh kem phong cách hoa Hàn Quốc, ngon và đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products  VALUES ('B003','LB01', 'Bánh hoa hồng nhật', 'Nhỏ', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 420000, 0);

INSERT INTO products  VALUES ('B004', 'LB01','Bánh hoa linh lang', 'Nhỏ', 380, "Hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 250000, 0);

INSERT INTO products VALUES ('B005','LB01', 'Bánh hoa kiểu anh sang trọng', 'Nhỏ', 500, "Hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.",  330000, 0);

INSERT INTO products  VALUES ('B006','LB01', 'Bánh hoa hải đường ngũ sắc', 'Vừa', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products  VALUES ('B007', 'LB01','Bánh hoa thanh khiết', 'Nhỏ', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 400000, 0);

INSERT INTO products  VALUES ('B008', 'LB01','Bánh hoa màu pastel ngọt ngào', 'Vừa', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products  VALUES ('B009', 'LB01','Bánh hoa xanh dịu dàng', 'Vừa', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 500000, 0);

INSERT INTO products VALUES ('B010', 'LB01','Bánh hoa tươi khoe sắc', 'Nhỏ', 450, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.","Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 380000, 0);

INSERT INTO products VALUES ('B011','LB01', 'Bánh hoa pastel mini', 'Bé', 350, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 200000, 0);

INSERT INTO products VALUES ('B012','LB01', 'Bánh hoa xanh trang nhã', 'Nhỏ', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 400000, 0);

INSERT INTO products VALUES ('B013','LB01', 'Bánh hoa pansy', 'Bé', 300, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 150000, 0);

INSERT INTO products VALUES ('B014', 'LB01','Bánh hoa kem tươi Hàn Quốc', 'Bé', 300, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 180000, 0);

INSERT INTO products VALUES ('B015', 'LB01',  'Bánh hoa xinh Hàn Quốc', 'Vừa', 480, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 400000, 0);

INSERT INTO products  VALUES ('B016', 'LB03',  'Bánh kem sữa chua xoài hảo hạng', 'Lớn', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 500000, 0);

INSERT INTO products VALUES ('B017',  'LB01', 'Bánh hoa mẫu đơn', 'Vừa', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products  VALUES ('B018', 'LB01',  'Bánh hoa hồng xinh xắn', 'Lớn', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products VALUES ('B019',  'LB01', 'Bánh hoa và ngọc trai', 'Nhỏ', 400, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 300000, 0);

INSERT INTO products VALUES ('B020', 'LB01',  'Bánh hoa tulip', 'Vừa', 500, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products VALUES ('B021', 'LB03','Bánh oreo việt quất', 'Nhỏ', 300, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 250000, 0);

INSERT INTO products VALUES ('B022','LB03', 'Bánh kem trái cây hạnh nhân', 'Lớn', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 500000, 0);

INSERT INTO products VALUES ('B023', 'LB01','Bánh dâu tây bồng bềnh', 'Nhỏ', 300, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 300000, 0);

INSERT INTO products VALUES ('B024', 'LB01','Bánh dâu tây mini', 'Bé', 250, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 150000, 0);

INSERT INTO products VALUES ('B025','LB01', 'Bánh 2 màu trang trí hoa', 'Nhỏ', 350, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 300000, 0);

INSERT INTO products VALUES ('B026', 'LB03','Bánh kem dứa caramel', 'Lớn', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 550000, 0);

INSERT INTO products VALUES ('B027','LB03', 'Bánh kem dứa hảo hạng', 'Lớn', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.","Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 550000, 0);

INSERT INTO products VALUES ('B028', 'LB03','Bánh kem sữa chua dâu tây hảo hạng', 'Lớn', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 500000, 0);

INSERT INTO products VALUES ('B029','LB03', 'Bánh kem mâm xôi dâu tây', 'Vừa', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.","Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 400000, 0);

INSERT INTO products VALUES ('B030','LB01', 'Bánh kem hoa hồng Pháp', 'Lớn', 550, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 550000, 0);

INSERT INTO products VALUES ('B031', 'LB01','Bánh liên hoan lớp', 'Lớn', 600, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 600000, 0);

INSERT INTO products VALUES ('B032','LB01', 'Bánh mứt việt quất', 'Lớn', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 450000, 0);

INSERT INTO products VALUES ('B033','LB01', 'Bánh xoài kem sữa chua', 'Vừa', 500, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 400000, 0);

INSERT INTO products VALUES ('B034', 'LB03','Bánh dâu tây kem tươi trái tim', 'Bé', 250, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.",  "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 150000, 0);

INSERT INTO products VALUES ('B035', 'LB03','Bánh dâu tây kem tươi', 'Bé', 250, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 150000, 0);

INSERT INTO products VALUES ('B036', 'LB01','Bánh tặng ông bà', 'Vừa', 500,"Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 400000, 0);

INSERT INTO products VALUES ('B037', 'LB01','Bánh vương miện và hoa hồng', 'Vừa', 450, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 400000, 0);

INSERT INTO products VALUES ('B038', 'LB01','Bánh kem dâu tây sữa chua Hàn Quốc', 'Nhỏ', 400, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 400000, 0);

INSERT INTO products VALUES ('B039', 'LB02','Bánh kem khỉ 2 tầng', 'Nhỏ', 750, "Bánh được trang trí những chiếc lá cây xanh tươi đủ sắc độ quen thuộc của núi rừng. Không chỉ vậy bánh còn có tạo hình những người bạn của rừng xanh theo phong cách chibi cực kỳ dễ thương. Màu sắc trang trí bánh được lấy từ các loại rau, củ, quả cần thiết, rửa sạch và để ráo. Rồi thái nhỏ hoặc xay nhuyễn bằng máy xay. Sau đó lọc qua rây để loại bỏ bã hoặc vắt thật mạnh để lấy nước “nhuộm”.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 650000, 0);

INSERT INTO products VALUES ('B040', 'LB02','Bánh sinh nhật bé trâu', 'Nhỏ', 400, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 350000, 0);

INSERT INTO products VALUES ('B041', 'LB02','Bánh đàn vịt vàng', 'Nhỏ', 400, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 350000, 0);

INSERT INTO products VALUES ('B042','LB02', 'Bánh bé thỏ và khu rừng', 'Vừa', 500, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.","Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 400000, 0);

INSERT INTO products VALUES ('B043','LB02', 'Bánh chú hổ dễ thương', 'Vừa', 400, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 300000, 0);

INSERT INTO products VALUES ('B044', 'LB02','Bánh chú voi dễ thương', 'Vừa', 500, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 400000, 0);

INSERT INTO products VALUES ('B045', 'LB02','Bánh kem hình sư tử', 'Vừa', 500,"Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 400000, 0);

INSERT INTO products VALUES ('B046', 'LB02','Bánh kem mặt sư tử dễ thương', 'Vừa', 500, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 400000, 0);

INSERT INTO products VALUES ('B047','LB02', 'Bánh hình con sâu', 'Lớn', 400, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 400000, 0);

INSERT INTO products VALUES ('B048', 'LB02','Bánh khủng long bé bỏng', 'Vừa', 500, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 450000, 0);

INSERT INTO products VALUES ('B049','LB02', 'Bánh sinh nhật thỏ và gấu', 'Vừa', 500, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh làkiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 400000, 0);

INSERT INTO products VALUES ('B050','LB04', 'Bánh 2 tầng - thiên thần hồng', 'Lớn', 750, "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", "Những chiếc bánh kem có hình những con thú ngộ nghĩnh là kiểu trang trí bánh kem cho bé phổ biến nhất. Nó không những đẹp mà còn đơn giản. Điểm nhấn của nó là ở cách trang trí. Chúng thường được trang trí bởi mô hình các con vật mà các bé yêu thích.", 650000, 0);

INSERT INTO products VALUES ('B051','LB03','Bánh kem phô mai hạnh nhân', 'Lớn', 500,  "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 450000, 0);

INSERT INTO products VALUES ('B052','LB04', 'Bánh công chúa Elsa', 'Vừa', 450, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0); INSERT INTO products VALUES ('B053','LB04', 'Bánh công chúa váy trắng', 'Vừa', 450, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0);

INSERT INTO products VALUES ('B054','LB04', 'Bánh kem Noah', 'Vừa', 450, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0);

INSERT INTO products VALUES ('B055', 'LB04','Bánh sinh nhật Doremon', 'Vừa', 450, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0);

INSERT INTO products VALUES ('B056', 'LB04','Bánh thiên thần tím', 'Vừa', 450, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0);

INSERT INTO products VALUES ('B057','LB01', 'Bánh kỷ niệm ngày yêu nhau', 'Vừa', 450, "Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 350000, 0);

INSERT INTO products VALUES ('B058','LB04', 'Bánh unicom đáng yêu', 'Vừa', 450, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0);

INSERT INTO products VALUES ('B059', 'LB03','Combo 3 bánh mini', 'Bé', 450, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 350000, 0);

INSERT INTO products VALUES ('B060','LB03', 'Bánh kem Socola cherry', 'Vừa', 450, "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", "Từ những quả trái cây tươi, chua ngọt hòa quyện với cốt bánh mềm mịn, béo ngậy.  được lựa chọn kĩ lưỡng từ những loại trái cây nhập khẩu, kết hợp với lớp kem đặc trưng béo ngọt kem và lớp bông lan mềm, tơi xốp hòa quyện lại với nhau tạo nên hương vị khó cưỡng, bạn hay mua thử ngay nhé.", 350000, 0);

INSERT INTO products VALUES ('B061', 'LB06','Bánh maccaron sọc hồng', 'Vừa', 500,"Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B062', 'LB06','Bánh socola kitkat', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B063','LB06', 'Bánh sinh nhật spa', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.",  500000, 0);

INSERT INTO products VALUES ('B064', 'LB06','Bánh socola trắng đen', 'Lớn', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B065', 'LB06','Bánh kem oreo và maccaron', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B066', 'LB06','Bánh gato socola', 'Nhỏ', 450, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 380000, 0);

INSERT INTO products VALUES ('B067','LB06', 'Bánh maccaron hoa hồng', 'Lớn', 600, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 650000, 0);

INSERT INTO products VALUES ('B068','LB06', 'Bánh kem socola', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B069', 'LB06','Bánh socola trắng vị chanh', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B070', 'LB06','Bánh ombre màu cam  socola', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B071', 'LB06','Bánh sinh nhật túi LV', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B072','LB08', 'Bánh Happy Valentine', 'Nhỏ', 500, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 400000, 0);

INSERT INTO products VALUES ('B073', 'LB07','Bánh bóng đá sôi động', 'Vừa', 500, "Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", "Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", 400000, 0);

INSERT INTO products VALUES ('B074','LB07', 'Bánh chữ T', 'Lớn', 500, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", 400000, 0);

INSERT INTO products VALUES ('B075', 'LB07','Bánh kem hình gốc cây', 'Lớn', 500, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", 400000, 0);

INSERT INTO products VALUES ('B076','LB07', 'Bánh trái tim - in ảnh', 'Nhỏ', 400, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!","Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", 300000, 0);

INSERT INTO products VALUES ('B077', 'LB07','Bánh red velvet trái tim', 'Lớn', 500, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", 400000, 0);

INSERT INTO products VALUES ('B078', 'LB07','Bánh hũ vàng tài lộc', 'Vừa', 500, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Sắp đến sinh nhật bè bạn hay người thân trong gia đình của bạn. Và bạn muốn khuyến mãi ngay họ một chiếc bánh lạ và đẹp nhất thì hãy tìm hiểu những mẫu bánh kem độc lạ và cũng không kém phần thích mắt của chúng tôi.", 400000, 0);

INSERT INTO products VALUES ('B079','LB06', 'Bánh maccaron cherry', 'Vừa', 500, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 450000, 0);

INSERT INTO products VALUES ('B080', 'LB04','Bánh thiên thần bé nhỏ', 'Vừa', 500, "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 450000, 0);

INSERT INTO products VALUES ('B081','LB06', 'Bánh socola kem tươi', 'Vừa', 450, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", "Những chiếc bánh kem ngộ nghĩnh với tạo hình những nhân vật hoạt hình xinh đẹp và độc đáo sẽ là món quà vô cùng ý nghĩa dành cho các bé yêu nhà bạn nhân dịp sinh nhật!", 350000, 0);

INSERT INTO products VALUES ('B082', 'LB01','Bánh kem hoa vị xoài', 'Vừa', 500,"Bánh kem với những bông hoa tuyệt đẹp, chất lượng luôn tươi mới, nguyên liệu hoàn toàn cao cấp được chọn lọc kỹ càng, đảm bảo an toàn vệ sinh thực phẩm, bảo vệ sức khỏe cho người dùng đó chính là điều mà chúng tôi muốn mang lại cho quý khách hàng. Phần hoa của bánh sẽ được làm từ kem bơ, kem tươi tạo nên vị bánh cũng rất ấn tượng, ngọt dịu, không gây ngán. Các thợ làm bánh phải bắt từng bông hoa, để cho thật lạnh để hoa đông cứng rồi mới sắp xếp lên bánh cho hài hoà. Vì vậy cần rất nhiều thời gian, sự kiên nhẫn và cả sự khéo léo. Mỗi chiếc bánh thật sự là một tác phẩm nghệ thuật.", "Trong những dịp lễ, ngày kỷ niệm hay sinh nhật, không cần một món quà quá khoa trương, đơn giản chỉ là một chiếc bánh kem được trang trí bằng những bông hoa sắc màu, bắt mắt cũng khiến bữa tiệc trở nên lung linh mà người nhận thì vui vẻ rồi. Bánh thích hợp tặng chị gái, mẹ, cô giáo.", 450000, 0);

INSERT INTO products VALUES ('B083','LB05', 'Bánh mousse chanh leo dâu tây', 'Vừa', 500, "Mousse là dòng bánh ngọt được sử dụng làm món tráng miệng hoặc ăn vặt đến từ kinh đô Pháp. Bánh gồm có 2 lớp, lớp kem ở trên là lớp kem mịn, khi ăn sẽ có vị ngọt, mát và thấm nhanh vào đầu lưỡi của người thưởng thức.", "Mousse là dòng bánh ngọt được sử dụng làm món tráng miệng hoặc ăn vặt đến từ kinh đô Pháp. Bánh gồm có 2 lớp, lớp kem ở trên là lớp kem mịn, khi ăn sẽ có vị ngọt, mát và thấm nhanh vào đầu lưỡi của người thưởng thức.", 400000, 0);

INSERT INTO products VALUES ('B084','LB05', 'Bánh mousse chanh leo xoài dâu tây', 'Lớn', 500, "Mousse là dòng bánh ngọt được sử dụng làm món tráng miệng hoặc ăn vặt đến từ kinh đô Pháp. Bánh gồm có 2 lớp, lớp kem ở trên là lớp kem mịn, khi ăn sẽ có vị ngọt, mát và thấm nhanh vào đầu lưỡi của người thưởng thức.","Mousse là dòng bánh ngọt được sử dụng làm món tráng miệng hoặc ăn vặt đến từ kinh đô Pháp. Bánh gồm có 2 lớp, lớp kem ở trên là lớp kem mịn, khi ăn sẽ có vị ngọt, mát và thấm nhanh vào đầu lưỡi của người thưởng thức.", 400000, 0);

INSERT INTO products VALUES ('B085','LB08', 'Bánh kem cầu vồng', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B086','LB08', 'Bánh kem tươi 6 lớp', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B087','LB08', 'Bánh kem tươi I love you', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B088','LB08', 'Bánh kem tươi love', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B089', 'LB08','Bánh kem tươi mini matcha', 'Bé', 250, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 150000, 0);

INSERT INTO products VALUES ('B090','LB08','Bánh kem tươi vị matcha', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B091','LB08', 'Bánh kem vị dâu tây', 'Lớn', 500, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 400000, 0);

INSERT INTO products VALUES ('B092','LB05', 'Bánh mousse xoài hạnh nhân', 'Vừa', 500, "Mousse là dòng bánh ngọt được sử dụng làm món tráng miệng hoặc ăn vặt đến từ kinh đô Pháp. Bánh gồm có 2 lớp, lớp kem ở trên là lớp kem mịn, khi ăn sẽ có vị ngọt, mát và thấm nhanh vào đầu lưỡi của người thưởng thức.","Mousse là dòng bánh ngọt được sử dụng làm món tráng miệng hoặc ăn vặt đến từ kinh đô Pháp. Bánh gồm có 2 lớp, lớp kem ở trên là lớp kem mịn, khi ăn sẽ có vị ngọt, mát và thấm nhanh vào đầu lưỡi của người thưởng thức.", 400000, 0);

INSERT INTO products VALUES ('B093','LB08', 'Bánh red velvet bướm', 'Vừa', 500, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 400000, 0);

INSERT INTO products VALUES ('B094', 'LB08','Bánh sinh nhật bé trai kiểu Hàn Quốc', 'Vừa', 500, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 450000, 0);

INSERT INTO products VALUES ('B095', 'LB08','Bánh kem whip dâu tây', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B096','LB08', 'Bánh kem Hàn Quốc', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 300000, 0);

INSERT INTO products VALUES ('B097','LB08', 'Bánh kem red velvet', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 400000, 0);

INSERT INTO products VALUES ('B098','LB08', 'Bánh kem phủ socola trắng', 'Vừa', 450, "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", "Ngày càng nhiều kiểu dáng, mẫu mã cùng sự pha trộn màu sắc bánh kem ra đời để phục vụ nhiều nhu cầu khác nhau của khách hàng. Có những người thích chiếc bánh sinh nhật lồng lộn, kiểu cách tỉ mỉ thì cũng sẽ có những người yêu chiếc bánh sinh nhật đơn giản, mộc mạc nhưng cũng không kém phần ý nghĩa và đẹp mắt.", 400000, 0);

INSERT INTO products VALUES ('B099','LB06', 'Bánh kem caramel socola', 'Vừa', 450, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 400000, 0);

INSERT INTO products VALUES ('B100', 'LB06','Bánh kem chery kem tươi', 'Vừa', 450, "Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.","Socola là sở thích của rất nhiều người. Một chiếc bánh gato kem socola chắc chắn sẽ vô cùng hấp dẫn với cả người. Với những bạn thích socola thì 1 chiếc bánh kém sinh nhật socola hoặc maccaron sẽ rất ý nghĩa trong ngày Sinh nhật.", 400000, 0);


/*==============================discounts=====================================*/
create table discounts( id int AUTO_INCREMENT PRIMARY KEY,
                   idProduct char(4),
                   discount DOUBLE,
                   startDate datetime,
                   expiryDate datetime,
                   CONSTRAINT f_mk FOREIGN KEY(idProduct) REFERENCES products(idProduct));
insert into discounts(idProduct, discount, startDATE, expiryDate)  values('B003', 0.2, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B007', 0.3, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B009', 0.5, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B011', 0.1, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B013', 0.3, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B015', 0.2, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B017', 0.4, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B019', 0.5, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B021', 0.1, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B023', 0.05, '2022/12/11', '2023/12/20');
insert into discounts(idProduct, discount, startDATE, expiryDate) values( 'B025', 0.3, '2022/12/11', '2022/12/20');


/*==============================ANH SP=====================================*/

CREATE table productImgs(idImg char(10) not null PRIMARY KEY, idProduct char(4) not null, img varchar(40), status TINYINT(10), CONSTRAINT f_msp FOREIGN KEY(idProduct) REFERENCES products(idProduct));

-- --

INSERT INTO productImgs VALUES('ASP01-1', 'B001','img/product/B001/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP01-2','B001','img/product/B001/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP01-3','B001','img/product/B001/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP01-4','B001','img/product/B001/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP02-1','B002','img/product/B002/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP02-2','B002','img/product/B002/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP02-3','B002','img/product/B002/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP02-4','B002','img/product/B002/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP03-1','B003','img/product/B003/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP03-2','B003','img/product/B003/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP03-3','B003','img/product/B003/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP03-4','B003','img/product/B003/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP04-1','B004','img/product/B004/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP04-2','B004','img/product/B004/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP04-3','B004','img/product/B004/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP05-1','B005','img/product/B005/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP05-2','B005','img/product/B005/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP05-3','B005','img/product/B005/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP06-1','B006','img/product/B006/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP06-2','B006','img/product/B006/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP06-3','B006','img/product/B006/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP07-1','B007','img/product/B007/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP07-2','B007','img/product/B007/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP07-3','B007','img/product/B007/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP08-1','B008','img/product/B008/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP08-2','B008','img/product/B008/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP08-3','B008','img/product/B008/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP09-1','B009','img/product/B009/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP09-2','B009','img/product/B009/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP09-3','B009','img/product/B009/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP09-4','B009','img/product/B009/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP10-1','B010','img/product/B010/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP10-2','B010','img/product/B010/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP10-3','B010','img/product/B010/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP10-4','B010','img/product/B010/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP11-1','B011','img/product/B011/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP11-2','B011','img/product/B011/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP11-3','B011','img/product/B011/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP11-4','B011','img/product/B011/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP12-1','B012','img/product/B012/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP12-2','B012','img/product/B012/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP12-3','B012','img/product/B012/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP13-1','B013','img/product/B013/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP13-2','B013','img/product/B013/banh2.jpg', 0);


INSERT INTO productImgs VALUES('ASP14-1','B014','img/product/B014/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP14-2','B014','img/product/B014/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP14-3','B014','img/product/B014/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP15-1','B015','img/product/B015/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP15-2','B015','img/product/B015/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP15-3','B015','img/product/B015/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP16-1','B016','img/product/B016/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP16-2','B016','img/product/B016/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP16-3','B016','img/product/B016/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP16-4','B016','img/product/B016/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP17-1','B017','img/product/B017/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP17-2','B017','img/product/B017/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP17-3','B017','img/product/B017/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP17-4','B017','img/product/B017/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP18-1','B018','img/product/B018/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP18-2','B018','img/product/B018/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP18-3','B018','img/product/B018/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP18-4','B018','img/product/B018/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP19-1','B019','img/product/B019/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP19-2','B019','img/product/B019/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP19-3','B019','img/product/B019/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP20-1','B020','img/product/B020/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP20-2','B020','img/product/B020/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP20-3','B020','img/product/B020/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP20-4','B020','img/product/B020/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP21-1','B021','img/product/B021/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP21-2','B021','img/product/B021/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP21-3','B021','img/product/B021/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP22-1','B022','img/product/B022/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP22-2','B022','img/product/B022/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP22-3','B022','img/product/B022/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP22-4','B022','img/product/B022/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP23-1','B023','img/product/B023/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP23-2','B023','img/product/B023/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP23-3','B023','img/product/B023/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP23-4','B023','img/product/B023/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP24-1','B024','img/product/B024/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP24-2','B024','img/product/B024/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP24-3','B024','img/product/B024/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP25-1','B025','img/product/B025/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP25-2','B025','img/product/B025/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP25-3','B025','img/product/B025/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP26-1','B026','img/product/B026/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP26-2','B026','img/product/B026/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP26-3','B026','img/product/B026/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP26-4','B026','img/product/B026/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP27-1','B027','img/product/B027/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP27-2','B027','img/product/B027/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP27-3','B027','img/product/B027/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP27-4','B027','img/product/B027/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP28-1','B028','img/product/B028/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP28-2','B028','img/product/B028/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP28-3','B028','img/product/B028/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP29-1','B029','img/product/B029/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP29-2','B029','img/product/B029/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP29-3','B029','img/product/B029/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP30-1','B030','img/product/B030/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP30-2','B030','img/product/B030/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP30-3','B030','img/product/B030/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP31-1','B031','img/product/B031/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP31-2','B031','img/product/B031/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP31-3','B031','img/product/B031/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP31-4','B031','img/product/B031/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP32-1','B032','img/product/B032/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP32-2','B032','img/product/B032/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP32-3','B032','img/product/B032/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP32-4','B032','img/product/B032/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP33-1','B033','img/product/B033/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP33-2','B033','img/product/B033/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP33-3','B033','img/product/B033/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP34-1','B034','img/product/B034/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP34-2','B034','img/product/B034/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP34-3','B034','img/product/B034/banh3.jpg', 0);


INSERT INTO productImgs VALUES('ASP35-1','B035','img/product/B035/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP35-2','B035','img/product/B035/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP35-3','B035','img/product/B035/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP35-4','B035','img/product/B035/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP36-1','B036','img/product/B036/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP36-2','B036','img/product/B036/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP36-3','B036','img/product/B036/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP36-4','B036','img/product/B036/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP37-1','B037','img/product/B037/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP37-2','B037','img/product/B037/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP37-3','B037','img/product/B037/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP37-4','B037','img/product/B037/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP38-1','B038','img/product/B038/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP38-2','B038','img/product/B038/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP38-3','B038','img/product/B038/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP38-4','B038','img/product/B038/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP39-1','B039','img/product/B039/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP39-2','B039','img/product/B039/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP39-3','B039','img/product/B039/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP39-4','B039','img/product/B039/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP40-1','B040','img/product/B040/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP40-2','B040','img/product/B040/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP40-3','B040','img/product/B040/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP40-4','B040','img/product/B040/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP41-1','B041','img/product/B041/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP41-2','B041','img/product/B041/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP41-3','B041','img/product/B041/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP41-4','B041','img/product/B041/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP42-1','B042','img/product/B042/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP42-2','B042','img/product/B042/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP42-3','B042','img/product/B042/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP42-4','B042','img/product/B042/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP43-1','B043','img/product/B043/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP43-2','B043','img/product/B043/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP43-3','B043','img/product/B043/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP44-1','B044','img/product/B044/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP44-2','B044','img/product/B044/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP44-3','B044','img/product/B044/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP45-1','B045','img/product/B045/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP45-2','B045','img/product/B045/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP45-3','B045','img/product/B045/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP46-1','B046','img/product/B046/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP46-2','B046','img/product/B046/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP46-3','B046','img/product/B046/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP47-1','B047','img/product/B047/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP47-2','B047','img/product/B047/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP47-3','B047','img/product/B047/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP47-4','B047','img/product/B047/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP48-1','B048','img/product/B048/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP48-2','B048','img/product/B048/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP48-3','B048','img/product/B048/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP49-1','B049','img/product/B049/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP49-2','B049','img/product/B049/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP49-3','B049','img/product/B049/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP50-1','B050','img/product/B050/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP50-2','B050','img/product/B050/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP50-3','B050','img/product/B050/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP51-1','B051','img/product/B051/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP51-2','B051','img/product/B051/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP51-3','B051','img/product/B051/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP52-1','B052','img/product/B052/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP52-2','B052','img/product/B052/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP52-3','B052','img/product/B052/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP52-4','B052','img/product/B052/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP53-1','B053','img/product/B053/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP53-2','B053','img/product/B053/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP53-3','B053','img/product/B053/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP53-4','B053','img/product/B053/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP54-1','B054','img/product/B054/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP54-2','B054','img/product/B054/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP54-3','B054','img/product/B054/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP54-4','B054','img/product/B054/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP55-1','B055','img/product/B055/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP55-2','B055','img/product/B055/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP55-3','B055','img/product/B055/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP55-4','B055','img/product/B055/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP56-1','B056','img/product/B056/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP56-2','B056','img/product/B056/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP56-3','B056','img/product/B056/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP57-1','B057','img/product/B057/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP57-2','B057','img/product/B057/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP57-3','B057','img/product/B057/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP58-1','B058','img/product/B058/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP58-2','B058','img/product/B058/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP58-3','B058','img/product/B058/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP58-4','B058','img/product/B058/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP59-1','B059','img/product/B059/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP59-2','B059','img/product/B059/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP59-3','B059','img/product/B059/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP59-4','B059','img/product/B059/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP60-1','B060','img/product/B060/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP60-2','B060','img/product/B060/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP60-3','B060','img/product/B060/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP60-4','B060','img/product/B060/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP61-1','B061','img/product/B061/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP61-2','B061','img/product/B061/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP61-3','B061','img/product/B061/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP62-1','B062','img/product/B062/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP62-2','B062','img/product/B062/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP62-3','B062','img/product/B062/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP62-4','B062','img/product/B062/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP63-1','B063','img/product/B063/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP63-2','B063','img/product/B063/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP63-3','B063','img/product/B063/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP63-4','B063','img/product/B063/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP64-1','B064','img/product/B064/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP64-2','B064','img/product/B064/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP64-3','B064','img/product/B064/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP64-4','B064','img/product/B064/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP65-1','B065','img/product/B065/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP65-2','B065','img/product/B065/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP65-3','B065','img/product/B065/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP66-1','B066','img/product/B066/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP66-2','B066','img/product/B066/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP66-3','B066','img/product/B066/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP67-1','B067','img/product/B067/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP67-2','B067','img/product/B067/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP67-3','B067','img/product/B067/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP67-4','B067','img/product/B067/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP68-1','B068','img/product/B068/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP68-2','B068','img/product/B068/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP68-3','B068','img/product/B068/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP69-1','B069','img/product/B069/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP69-2','B069','img/product/B069/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP69-3','B069','img/product/B069/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP69-4','B069','img/product/B069/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP70-1','B070','img/product/B070/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP70-2','B070','img/product/B070/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP70-3','B070','img/product/B070/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP71-1','B071','img/product/B071/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP71-2','B071','img/product/B071/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP71-3','B071','img/product/B071/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP72-1','B072','img/product/B072/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP72-2','B072','img/product/B072/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP72-3','B072','img/product/B072/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP73-1','B073','img/product/B073/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP73-2','B073','img/product/B073/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP73-3','B073','img/product/B073/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP74-1','B074','img/product/B074/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP74-2','B074','img/product/B074/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP74-3','B074','img/product/B074/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP75-1','B075','img/product/B075/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP75-2','B075','img/product/B075/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP75-3','B075','img/product/B075/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP75-4','B075','img/product/B075/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP76-1','B076','img/product/B076/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP76-2','B076','img/product/B076/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP76-3','B076','img/product/B076/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP77-1','B077','img/product/B077/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP77-2','B077','img/product/B077/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP77-3','B077','img/product/B077/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP78-1','B078','img/product/B078/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP78-2','B078','img/product/B078/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP78-3','B078','img/product/B078/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP78-4','B078','img/product/B078/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP79-1','B079','img/product/B079/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP79-2','B079','img/product/B079/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP79-3','B079','img/product/B079/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP79-4','B079','img/product/B079/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP80-1','B080','img/product/B080/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP80-2','B080','img/product/B080/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP80-3','B080','img/product/B080/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP80-4','B080','img/product/B080/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP81-1','B081','img/product/B081/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP81-2','B081','img/product/B081/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP81-3','B081','img/product/B081/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP81-4','B081','img/product/B081/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP82-1','B082','img/product/B082/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP82-2','B082','img/product/B082/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP82-3','B082','img/product/B082/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP82-4','B082','img/product/B082/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP83-1','B083','img/product/B083/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP83-2','B083','img/product/B083/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP83-3','B083','img/product/B083/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP84-1','B084','img/product/B084/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP84-2','B084','img/product/B084/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP84-3','B084','img/product/B084/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP85-1','B085','img/product/B085/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP85-2','B085','img/product/B085/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP85-3','B085','img/product/B085/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP86-1','B086','img/product/B086/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP86-2','B086','img/product/B086/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP86-3','B086','img/product/B086/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP87-1','B087','img/product/B087/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP87-2','B087','img/product/B087/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP87-3','B087','img/product/B087/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP88-1','B088','img/product/B088/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP88-2','B088','img/product/B088/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP88-3','B088','img/product/B088/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP89-1','B089','img/product/B089/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP89-2','B089','img/product/B089/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP89-3','B089','img/product/B089/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP90-1','B090','img/product/B090/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP90-2','B090','img/product/B090/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP90-3','B090','img/product/B090/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP91-1','B091','img/product/B091/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP91-2','B091','img/product/B091/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP91-3','B091','img/product/B091/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP91-4','B091','img/product/B091/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP92-1','B092','img/product/B092/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP92-2','B092','img/product/B092/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP92-3','B092','img/product/B092/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP92-4','B092','img/product/B092/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP93-1','B093','img/product/B093/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP93-2','B093','img/product/B093/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP93-3','B093','img/product/B093/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP93-4','B093','img/product/B093/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP94-1','B094','img/product/B094/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP94-2','B094','img/product/B094/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP94-3','B094','img/product/B094/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP95-1','B095','img/product/B095/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP95-2','B095','img/product/B095/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP95-3','B095','img/product/B095/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP95-4','B095','img/product/B095/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP96-1','B096','img/product/B096/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP96-2','B096','img/product/B096/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP96-3','B096','img/product/B096/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP96-4','B096','img/product/B096/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP97-1','B097','img/product/B097/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP97-2','B097','img/product/B097/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP97-3','B097','img/product/B097/banh3.jpg', 0);
INSERT INTO productImgs VALUES('ASP97-4','B097','img/product/B097/banh4.jpg', 0);

INSERT INTO productImgs VALUES('ASP98-1','B098','img/product/B098/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP98-2','B098','img/product/B098/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP98-3','B098','img/product/B098/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP99-1','B099','img/product/B099/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP99-2','B099','img/product/B099/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP99-3','B099','img/product/B099/banh3.jpg', 0);

INSERT INTO productImgs VALUES('ASP100-1','B100','img/product/B100/banh1.jpg', 0);
INSERT INTO productImgs VALUES('ASP100-2','B100','img/product/B100/banh2.jpg', 0);
INSERT INTO productImgs VALUES('ASP100-3','B100','img/product/B100/banh3.jpg', 0);

/*==============================productDetails=====================================*/
create table productDetails(idProduct char(4) not null,
															quantity int,
															 inventory int,
															dateOfManufacture DATETIME,
															expirationDate DATETIME,
										CONSTRAINT f_mspproductDetails FOREIGN KEY(idProduct) REFERENCES products(idProduct));
INSERT INTO productDetails VALUES('B001', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B002', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B003', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B004', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B005', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B006', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B007', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B008', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B009', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B010', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B011', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B012', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B013', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B014', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B015', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B016', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B017', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B018', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B019', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B020', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B021', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B022', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B023', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B024', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B025', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B026', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B027', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B028', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B029', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B030', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B031', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B032', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B033', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B034', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B035', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B036', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B037', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B038', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B039', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B040', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B041', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B042', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B043', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B044', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B045', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B046', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B047', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B048', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B049', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B050', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B051', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B052', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B053', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B054', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B055', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B056', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B057', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B058', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B059', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B060', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B061', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B062', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B063', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B064', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B065', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B066', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B067', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B068', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B069', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B070', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B071', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B072', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B073', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B074', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B075', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B076', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B077', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B078', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B079', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B080', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B081', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B082', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B083', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B084', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B085', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B086', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B087', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B088', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B089', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B090', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B091', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B092', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B093', 15, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B094', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B095', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B096', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B097', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B098', 20, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B099', 10, 10, '2022/10/12', '2022/10/15');
INSERT INTO productDetails VALUES('B100', 10, 10, '2022/10/12', '2022/10/15');

/*=========================================ACCOUNTS=========================================*/
CREATE TABLE ACCOUNTS(ID CHAR(50) PRIMARY KEY not null,
                      EMAIL VARCHAR(255),
                      PASS VARCHAR(255),
                      NAME VARCHAR(100),
                      ROLE tinyint(4) NOT NULL DEFAULT 0,
                      STATUS tinyint(4) DEFAULT 0, TYPE VARCHAR(10),
                      ISADD tinyint(4) NOT NULL DEFAULT 0,
                      ISEDIT tinyint(4) NOT NULL DEFAULT 0,
                      ISDELETE tinyint(4) NOT NULL DEFAULT 0);
INSERT INTO ACCOUNTS VALUES('AD01', 'thanhthuy.200402@gmail.com', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', 'Thanh Thùy', 2,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD02', 'thanhtam@gmail.com', 'b3a8e0e1f9ab1bfe3a36f231f676f78bb30a519d2b21e6c530c0eee8ebb4a5d0', 'Thanh Tâm', 2,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD03', 'thanhthuan@gmail.com', '35a9e381b1a27567549b5f8a6f783c167ebf809f1c4d6a9e367240484d8ce281', 'Thanh Thuận', 2,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD04', 'nhom27@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 27', 1,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD05', 'nhom270@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 270', 1,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD06', 'nhom271@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 271', 0,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD07', 'nhom272@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 272', 0,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD08', 'nhom273@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 273', 0,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD09', 'nhom274@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 274', 0,0,null, 1, 1, 1);
INSERT INTO ACCOUNTS VALUES('AD10', 'nhom275@gmail.com', '8a050fa1b4e6ed4a40629264f4f833da8bb5592e782d3c7ed9a4da7c3a3b5c53', 'Nhóm 275', 0,0,null, 1, 1, 1);

/*==============================CUSTOMERS=====================================*/
CREATE TABLE CUSTOMERS(ID CHAR(50) PRIMARY KEY NOT NULL,
											 ADDRESS VARCHAR(60),
											 PHONE VARCHAR(10),
											 CONSTRAINT f_mTK FOREIGN KEY (ID) REFERENCES ACCOUNTS(ID));
 INSERT INTO CUSTOMERS VALUES('AD01','TP.HCM', '0978675678');
 INSERT INTO CUSTOMERS VALUES('AD02', 'TP.HCM', '0987675435');
 INSERT INTO CUSTOMERS VALUES('AD03', 'TP.HCM', '0987863764');
 INSERT INTO CUSTOMERS VALUES('AD04', 'TP.HCM', '0987467536');
 INSERT INTO CUSTOMERS VALUES('AD05', 'BINH DUONG', '0987463578');
 INSERT INTO CUSTOMERS VALUES('AD06',  'DONG NAI', '0978365478');
 INSERT INTO CUSTOMERS VALUES('AD07',  'TP.HCM', '0987425367');
 INSERT INTO CUSTOMERS VALUES('AD08',  'TP.HCM', '0976456736');
 INSERT INTO CUSTOMERS VALUES('AD09',  'LONG AN', '0978365627');
 INSERT INTO CUSTOMERS VALUES('AD10', 'TP.HCM', '0987362567');


 /*==============================BILLS=====================================*/
CREATE TABLE BILLS(ID CHAR(4) PRIMARY KEY,
											CUSTOMER_ID CHAR(50),
											EXPORT_DATE DATETIME NOT NULL,
											NOTES LONGTEXT,
											TOTAL_BILL FLOAT,
											STATUS int DEFAULT 0,
											CREATE_BY CHAR(4) DEFAULT NULL,
											CONSTRAINT f_kh FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(ID ));
INSERT INTO BILLS VALUES('HD01', 'AD02', '2022/10/12','Giao sớm, đúng địa chỉ nha shop ơi', 900000, 0,NULL);
INSERT INTO BILLS VALUES('HD02', 'AD04', '2022/10/19','Giao sớm, đúng địa chỉ nha shop ơi', 330000, 1,NULL);
INSERT INTO BILLS VALUES('HD03', 'AD05', '2022/10/12','Giao sớm, đúng địa chỉ nha shop ơi', 950000, 0,NULL);
INSERT INTO BILLS VALUES('HD04', 'AD02', '2022/9/23','Giao sớm, đúng địa chỉ nha shop ơi', 300000, 1,NULL);
INSERT INTO BILLS VALUES('HD05', 'AD01', '2022/10/21','Giao sớm, đúng địa chỉ nha shop ơi', 1230000, 0,NULL);
INSERT INTO BILLS VALUES('HD06', 'AD03', '2022/10/12','Giao sớm, đúng địa chỉ nha shop ơi', 900000, 0,NULL);
INSERT INTO BILLS VALUES('HD07', 'AD03', '2022/5/6','Giao sớm, đúng địa chỉ nha shop ơi', 380000, 2,NULL);
INSERT INTO BILLS VALUES('HD08', 'AD01', '2022/8/12','Giao sớm, đúng địa chỉ nha shop ơi', 400000, 0,NULL);
INSERT INTO BILLS VALUES('HD09', 'AD06', '2022/7/15','Giao sớm, đúng địa chỉ nha shop ơi', 400000, 1,NULL);
INSERT INTO BILLS VALUES('HD10', 'AD07', '2022/11/7','Giao sớm, đúng địa chỉ nha shop ơi', 650000, 0,NULL);
INSERT INTO BILLS VALUES('HD11', 'AD01', '2022/1/19','Giao sớm, đúng địa chỉ nha shop ơi', 1950000, 1,NULL);
INSERT INTO BILLS VALUES('HD12', 'AD02', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 350000, 0,NULL);
INSERT INTO BILLS VALUES('HD13', 'AD01', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 500000, 2,NULL);
INSERT INTO BILLS VALUES('HD14', 'AD09', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 300000, 0,NULL);
INSERT INTO BILLS VALUES('HD15', 'AD02', '2023/1/8','Giao sớm, đúng địa chỉ nha shop ơi', 300000, 0,NULL);

/*==============================BILL_DETAIL=====================================*/
CREATE TABLE BILL_DETAIL(ID CHAR(4),
									 idProduct CHAR(4),
										AMOUNT INT,
										NOTES LONGTEXT,
										CONSTRAINT f_mhdcthd FOREIGN KEY(idProduct) REFERENCES products(idProduct),
										CONSTRAINT f_mspcthd FOREIGN KEY (ID) REFERENCES BILLS(ID));
INSERT INTO BILL_DETAIL VALUES('HD01', 'B001', 2, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD02', 'B005', 1, 'Chúc mừng sinh nhật 32 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD03', 'B039', 1, 'Chúc mừng sinh nhật 25 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD03', 'B035', 2, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD04', 'B023', 1, 'Chúc mừng sinh nhật 27 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD05', 'B014', 1, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD05', 'B012', 2, 'Chúc mừng sinh nhật 52 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD05', 'B004', 1, 'Chúc mừng sinh nhật 12 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD06', 'B008', 2, 'Chúc mừng sinh nhật 2 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD07', 'B010', 1, 'Chúc mừng sinh nhật 22 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD08', 'B099', 1, 'Chúc mừng sinh nhật 21 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD09', 'B029', 1, 'Chúc mừng sinh nhật 25 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD10', 'B067', 1, 'Chúc mừng sinh nhật 28 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD11', 'B050', 3, 'Chúc mừng sinh nhật 62 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD12', 'B040', 1, 'Chúc mừng sinh nhật 29 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD13', 'B054', 1, 'Chúc mừng sinh nhật 30 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD13', 'B034', 1, 'Chúc mừng sinh nhật 24 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD13', 'B014', 3, 'Chúc mừng sinh nhật 24 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD14', 'B088', 1, 'Chúc mừng sinh nhật 23 tuổi');
INSERT INTO BILL_DETAIL VALUES('HD15', 'B090', 1, 'Chúc mừng sinh nhật 20 tuổi');

/*=============================================DELIVERY=======================================*/
CREATE TABLE DELIVERY(ID CHAR(4),
										    DELIVERY_DATE DATETIME NOT NULL,
												ADDRESS VARCHAR(60) NOT NULL,
												EMAIL VARCHAR(60),
												PHONE VARCHAR(12),
												NAMECUSTOMER VARCHAR(60),
												CONSTRAINT f_mhdgh FOREIGN KEY(ID) REFERENCES BILLS(ID));
												
INSERT INTO DELIVERY VALUES('HD01', '2022/10/14', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD02', '2022/10/23', 'Q3, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD03', '2022/10/15', 'TP.THỦ ĐỨC TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD04', '2022/9/25', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD05', '2022/10/24', 'ĐỒNG NAI', null, null,null);
INSERT INTO DELIVERY VALUES('HD06', '2022/10/15', 'Q10, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD07', '2022/5/11', 'Q10, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD08', '2022/8/15', 'Q.BÌNH THẠNH, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD09', '2022/7/17', 'H.CHÂU THÀNH,LONG AN', null, null,null);
INSERT INTO DELIVERY VALUES('HD10', '2022/11/10', 'Q9, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD11', '2022/1/22', 'Q.BÌNH CHÁNH, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD12', '2023/1/12', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD13', '2023/1/11', 'Q1, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD14', '2023/1/12', 'Q3, TP HCM', null, null,null);
INSERT INTO DELIVERY VALUES('HD15', '2023/1/13', 'Q1, TP HCM', null, null,null);


/*=========================================Comments=========================================*/

CREATE table Comments(IdCmt INT PRIMARY KEY AUTO_INCREMENT,idProduct CHAR(4) not null, ID CHAR(50)  not null , comment longtext, date datetime, STATUS tinyint(4) DEFAULT 0);

INSERT into Comments VALUES(1,'B001','AD02',"Lần đầu đặt bánh ở tiệm này thấy rất hài lòng, cầm chiếc bánh trên tay đi tặng được mọi người khen . Rất hài lòng, trang trí sang trọng, đẹp mắt.", '2022/11/22', 0);
INSERT into Comments VALUES(2,'B002','AD01',"Đặt bánh ở tiệm này thấy rất hài lòng, cầm chiếc bánh trên tay đi tặng được mọi người khen . Rất hài lòng, trang trí sang trọng, đẹp mắt.", '2023/03/02', 0);
/*========================================= BLOG =========================================*/




