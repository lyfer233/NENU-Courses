pic = imread('fingerprint.jpg');
se = strel('square',3);
pic_erode = imerode(pic,se);
pic_open = imopen(pic,se);
pic_dilate = imdilate(pic_open,se);
pic_close = imclose(pic_dilate,se);
figure,subplot(2,3,1);imshow(pic);title('ԭͼ');
subplot(2,3,2);imshow(pic_dilate);title('����');
subplot(2,3,3);imshow(pic_erode);title('��ʴ');
subplot(2,3,4);imshow(pic_open);title('��');
subplot(2,3,5);imshow(pic_close);title('��');