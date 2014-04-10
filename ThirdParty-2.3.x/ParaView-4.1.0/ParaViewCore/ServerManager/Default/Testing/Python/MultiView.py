# Tests that multiple views can render and save images correctly in batch.

import SMPythonTesting
SMPythonTesting.ProcessCommandLineArguments()

from paraview.simple import *
v1 = CreateRenderView()
Sphere()
Show()
Render()

from paraview.vtk.vtkTestingRendering import vtkTesting

import os.path
prefix, ext = os.path.splitext(SMPythonTesting.BaselineImage)

baseline1 = "%s_render_view" % prefix + ext
baseline2 = "%s_chart_view" % prefix + ext

testing1 = vtkTesting()
testing1.AddArgument("-T")
testing1.AddArgument(SMPythonTesting.TempDir)
testing1.AddArgument("-V")
testing1.AddArgument(baseline1)

testing2 = vtkTesting()
testing2.AddArgument("-T")
testing2.AddArgument(SMPythonTesting.TempDir)
testing2.AddArgument("-V")
testing2.AddArgument(baseline2)

v2 = CreateXYPlotView()
for i in [0, 1, 2]:
    Render(v1)
    filename = "%s/view1_%d.png" % (SMPythonTesting.TempDir, i)
    WriteImage(filename, v1)
    if testing1.RegressionTest(filename, SMPythonTesting.Threshold) != testing1.PASSED:
        raise RuntimeError, "Failed image comparison for view 1 on run #%d"%i

    Render(v2)
    filename = "%s/view2_%d.png" % (SMPythonTesting.TempDir, i)
    WriteImage(filename, v2)
    if testing2.RegressionTest(filename, SMPythonTesting.Threshold) != testing2.PASSED:
        raise RuntimeError, "Failed image comparison for view 2 on run #%d"%i
