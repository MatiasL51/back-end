from django.shortcuts import render
from rest_framework import viewsets
from .models import Alumno, Curso
from .serializers import AlumnoSerializer, CursoSerializer

# Create your views here.
def home(request):
    return render(request, "home.html")

class CursoViewSet(viewsets.ModelViewSet):
  """ViewSet para listar, crear, actualizar y eliminar Cursos."""

  queryset = Curso.objects.all()
  serializer_class = CursoSerializer


class AlumnoViewSet(viewsets.ModelViewSet):
  """ViewSet para listar, crear, actualizar y eliminar Alumnos."""

  queryset = Alumno.objects.all()
  serializer_class = AlumnoSerializer