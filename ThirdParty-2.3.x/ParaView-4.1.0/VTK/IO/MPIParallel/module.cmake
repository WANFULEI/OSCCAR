vtk_module(vtkIOMPIParallel
  IMPLEMENTS
    vtkIOGeometry
  GROUPS
    MPI
  DEPENDS
    vtkIOGeometry
    vtkParallelMPI
  PRIVATE_DEPENDS
    vtksys
  TEST_DEPENDS
    vtkRenderingOpenGL
    vtkTestingRendering
    vtkInteractionStyle
  )