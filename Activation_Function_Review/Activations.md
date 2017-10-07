### Softmax

```
sig(z)_j = exp(z_j) / sum_{k=1->K}{exp(z_k)}, for j = 1, ..., K
```

`K` 代表類別數量，`z` 是一個向量。

Softmax 後的 z 中下標 `j` 的元素，被歸一化到 [0,1) 之間，

而所有 sig() 啟動後的元素值總和會是 1 ，也就是 `sum_{j=1->K}{sig(z)_j}==1`

這個函數的作用是將向量 `z` 中的值壓縮成一個離散機率分佈，

如果結合 `Perceptron Learning` ，那麼每個分類的機率：

```
P(y=j|x) = exp(x^T*w_j) / sum_{k=1->K}{exp(x^T*w_k)}
```

通常多類別分類問題結合 `softmax` + `categorical cross-entropy loss` 使用
