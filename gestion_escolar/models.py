from django.db import models

# Create your models here.

class Alumno(models.Model):
  # Datos de Identificación Personal
  rut = models.CharField(
      max_length=12,
      unique=True,
      verbose_name="RUT / Identificación",
      help_text="Formato: 12.345.678-9",
  )
  nombre = models.CharField(max_length=100, verbose_name="Nombre(s)")
  apellido = models.CharField(max_length=100, verbose_name="Apellido(s)")
  email = models.EmailField(unique=True, verbose_name="Correo Electrónico")
  fecha_nacimiento = models.DateField(
      verbose_name="Fecha de Nacimiento", null=True, blank=True
  )

  # Información de Contacto y Ubicación
  telefono = models.CharField(
      max_length=15, blank=True, null=True, verbose_name="Teléfono de Contacto"
  )
  direccion = models.TextField(blank=True, null=True, verbose_name="Dirección")

  # Información Académica
  # Nota: Si tienes un modelo 'Curso', puedes cambiar este CharField por un ForeignKey:
  # curso = models.ForeignKey('Curso', on_delete=models.SET_NULL, null=True, blank=True, related_name='alumnos', verbose_name="Curso")
  grado = models.CharField(
      max_length=50, blank=True, null=True, verbose_name="Grado o Curso"
  )

  # Metadatos y Control del Sistema
  activo = models.BooleanField(
      default=True,
      verbose_name="Activo",
      help_text="Indica si el alumno se encuentra matriculado actualmente.",
  )
  fecha_registro = models.DateTimeField(
      auto_now_add=True, verbose_name="Fecha de Registro"
  )
  ultima_actualizacion = models.DateTimeField(
      auto_now=True, verbose_name="Última Actualización"
  )
