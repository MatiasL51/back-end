from django.urls import include, path
from rest_framework.routers import DefaultRouter
from .views import AlumnoViewSet, CursoViewSet

# Creamos el enrutador y registramos nuestros ViewSets
router = DefaultRouter()
router.register(r"alumnos", AlumnoViewSet, basename="alumno")
router.register(r"cursos", CursoViewSet, basename="curso")

urlpatterns = [
    path("", include(router.urls)),
]