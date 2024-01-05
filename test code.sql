const express = require('express');
const app = express();
const port = 3000;

// Định nghĩa các route và xử lý yêu cầu
app.get('/', (req, res) => {
  res.send('Chào mừng đến với ứng dụng mã nguồn mở!');
});

app.get('/api/data', (req, res) => {
  const data = {
    message: 'Đây là dữ liệu từ API',
    timestamp: new Date().toISOString()
  };
  res.json(data);
});

// Khởi động server
app.listen(port, () => {
  console.log(`Ứng dụng đang lắng nghe tại http://localhost:${port}`);
});
