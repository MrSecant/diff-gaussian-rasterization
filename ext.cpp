#include <torch/extension.h>
#include "rasterize_points.h"

PYBIND11_MODULE(TORCH_EXTENSION_NAME, m) {
  m.def("rasterize_gaussians", &RasterizeGaussiansCPU);
  m.def("rasterize_gaussians_backward", &RasterizeGaussiansBackwardCPU);
  m.def("mark_visible", &markVisible);
}