# Differential Gaussian Rasterization: CPU Version with C Kernel

This repository provides a CPU-based implementation of the Differential Gaussian Rasterization engine. It is a pure C version based on the rasterization engine used in the paper **"3D Gaussian Splatting for Real-Time Rendering of Radiance Fields"**. This CPU version maintains the core functionality while optimizing for environments without GPU dependencies.

## Key Features
- **Pure C Implementation:** Completely rewritten from the original version to run solely on CPU.
- **Efficient Gaussian Splatting:** Leverages Gaussian splatting techniques for rasterizing 3D scenes.
- **Optimized for Non-GPU Systems:** Ideal for systems where GPU resources are limited or unavailable.
  
## How to Use

Clone this repository:

```bash
git clone https://github.com/mmt-at/diff-gaussian-rasterization.git c-diff-gaussian-rasterization
```

To build the project, simply run the following:

```bash
cd c-diff-gaussian-rasterization
pip install -e .
```

## Usage

After building, you can run the rasterization engine in gaussian-splatting project using:

```bash
# in gaussian-splatting
python render.py -m models/drjohnson/ -s db/drjohnson/ --data_device cpu --resolution 100
python metrics.py -m models/drjohnson/
```

## Citation

If you find this work useful in your research, please consider citing the original authors of the 3D Gaussian Splatting method:

```BibTeX
@Article{kerbl3Dgaussians,
      author       = {Kerbl, Bernhard and Kopanas, Georgios and Leimk{\"u}hler, Thomas and Drettakis, George},
      title        = {3D Gaussian Splatting for Real-Time Radiance Field Rendering},
      journal      = {ACM Transactions on Graphics},
      number       = {4},
      volume       = {42},
      month        = {July},
      year         = {2023},
      url          = {https://repo-sam.inria.fr/fungraph/3d-gaussian-splatting/}
}
```

Feel free to use this version in your research, and we appreciate any feedback or contributions to further improve this CPU-based implementation.

---
