
> This out of tree module contains a number of blocks to help perform mapping between bits and symbolsThis out of tree module contains a number of blocks to help perform mapping between bits and symbols

##### This version is used to generate RML2016.10a_dict dataset, almost same data feature with original open dataset.

Based on [[1] gr-vt/gr-mapper Commit 52383e2][1] **without**"normalize constellation power to 1"related code in *gr-mapper\lib\constellation.cc line 75-81*.

```python
// normalize constellation power to 1
for(int j=0; j< d_wmaps.size(); j++){
    float avgp = 0;
    for(int i=0; i<d_wmaps[j].size(); i++){ avgp = std::sqrt((d_wmaps[j][i] * std::conj(d_wmaps[j][i])).real()); }
    float scale = d_wmaps[j].size() / avgp;
    for(int i=0; i<d_wmaps[j].size(); i++){ d_wmaps[j][i] = d_wmaps[j][i] * scale; }
}
```

[1]: https://github.com/gr-vt/gr-mapper/tree/52383e2832a86feb452ddd80928bce69147f01c0 "gr-vt/gr-mapper commit 52383e2"