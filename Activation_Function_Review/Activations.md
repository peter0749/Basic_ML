### Softmax

```
sig(z)_j = exp(z_j) / sum_{k=1->K}{exp(z_k)}, for j = 1, ..., K
```

`K` 代表類別數量，`z` 是一個向量。

Softmax 後的 z 中下標 `j` 的元素，被歸一化到 [0,1) 之間，

並且經過 softmax 啟動的 z 向量元素值總和會是 1 ，也就是 `sum_{j=1->K}{sig(z)_j}==1`

這個函數的作用是將向量 `z` 中的值壓縮成一個離散機率分佈，

如果結合 `Perceptron Learning` ，那麼每個分類的機率：

```
P(y=j|x) = exp(x^T*w_j) / sum_{k=1->K}{exp(x^T*w_k)}
```

（公式從 wiki 抄過來）

暫且無視掉 `bias` 項，不過意思到就可以了...

通常多類別分類問題結合 `softmax` + `categorical cross-entropy loss` 使用

`Softmax` 的導數：

設 `y = sig(z)` ，也就是 `z` 向量 `softmax` 後的結果。

我們想知道每個 `∂y/∂z`:

```
∂y_i/∂z_j: y_i*(1-y_i), if i==j
∂y_i/∂z_j: -y_i*y_j, if i!=j
```
