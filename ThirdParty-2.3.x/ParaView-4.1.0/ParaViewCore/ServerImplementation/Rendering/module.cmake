vtk_module(vtkPVServerImplementationRendering
  GROUPS
    ParaViewRendering
  DEPENDS
    vtkPVServerImplementationCore
    vtkPVClientServerCoreRendering
  TEST_LABELS
    PARAVIEW
)
