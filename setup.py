from setuptools import setup
from torch.utils.cpp_extension import CppExtension, BuildExtension
import os
import platform

current_system = platform.system()

current_dir = os.path.dirname(os.path.abspath(__file__))

if current_system == "Linux":
    setup(
        name="c_diff_gaussian_rasterization",
        packages=['c_diff_gaussian_rasterization'],
        ext_modules=[
            CppExtension(
                name="c_diff_gaussian_rasterization._C",
                sources=[
                    "rasterize_points.cpp",
                    "ext.cpp",
                    "cpu_rasterizer/forward.c",
                    "cpu_rasterizer/rasterizer_impl.c",
                    "cpu_rasterizer/auxiliary.c",
                    # "cpu_rasterizer/render.c"
                ],
                include_dirs=[os.path.join(current_dir, 'cpu_rasterizer')],
                extra_compile_args={
                    'cxx': ['-O3', '-fPIC'],
                    'c': ['-O3', '-std=c11', '-fPIC']
                })
            ],
        cmdclass={
            'build_ext': BuildExtension
        }
    )
elif current_system == "Windows":
    setup(
        name="c_diff_gaussian_rasterization",
        packages=['c_diff_gaussian_rasterization'],
        ext_modules=[
            CppExtension(
                name="c_diff_gaussian_rasterization._C",
                sources=[
                    "rasterize_points.cpp",
                    "ext.cpp",
                    "cpu_rasterizer/forward.c",
                    "cpu_rasterizer/rasterizer_impl.c",
                    "cpu_rasterizer/auxiliary.c",
                ],

                extra_compile_args={
                    'cxx': ['/O2', f'/I"{os.path.join(current_dir, "cpu_rasterizer")}"'],
                    'c': ['/O2', f'/I"{os.path.join(current_dir, "cpu_rasterizer")}"']
                }
            )
        ],
        cmdclass={
            'build_ext': BuildExtension
        }
    )
