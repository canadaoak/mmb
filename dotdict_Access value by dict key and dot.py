from types import SimpleNamespace
from attrdict import AttrDict
from dotmap import DotMap


mydict = {"x":"a", "y":"b", "z":{"p":1, "q":2, "r":{"u":100, "v":"hundred"}}, "s":{"one":1, "two":"two"}}

# provide dot notation access of only top level dictionary value
dd=SimpleNamespace(**mydict)

ddd=AttrDict(mydict)

# provide dot notation access of all nested dictionary value
dm = DotMap(mydict)