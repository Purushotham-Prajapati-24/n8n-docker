// Show selected files dynamically + allow removing
    const fileInput = document.getElementById('fileInput');
    const fileList = document.getElementById('fileList');

    fileInput.addEventListener('change', () => {
      fileList.innerHTML = '';
      Array.from(fileInput.files).forEach((file, index) => {
        const li = document.createElement('li');
        li.textContent = file.name;
        const removeBtn = document.createElement('button');
        removeBtn.textContent = "✖";
        removeBtn.onclick = (e) => {
          e.preventDefault();
          const dt = new DataTransfer();
          Array.from(fileInput.files).forEach((f, i) => {
            if (i !== index) dt.items.add(f);
          });
          fileInput.files = dt.files;
          li.remove();
        };
        li.appendChild(removeBtn);
        fileList.appendChild(li);
      });
    });