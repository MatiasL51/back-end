from django.db import models
from django.utils import timezone


class Alumno(models.Model):
  # Rut con un tamaño seguro y suficiente
  rut = models.CharField(
      max_length=20,
      verbose_name="RUT / Identificación",
      help_text="Formato: 12.345.678-9",
  )
  nombre = models.CharField(max_length=30, verbose_name="Nombre(s)")
  apellido = models.CharField(max_length=30, verbose_name="Apellido(s)")

  # Reducimos el max_length a 191 para evitar problemas con el límite de índices en MySQL
  email = models.EmailField(
      max_length=50, verbose_name="Correo Electrónico"
  )

  fecha_nacimiento = models.DateField(
      verbose_name="Fecha de Nacimiento", null=True, blank=True
  )
  telefono = models.CharField(
      max_length=15, blank=True, null=True, verbose_name="Teléfono de Contacto"
  )
  direccion = models.TextField(blank=True, null=True, verbose_name="Dirección")
  grado = models.CharField(
      max_length=50, blank=True, null=True, verbose_name="Grado o Curso"
  )
  activo = models.BooleanField(
      default=True,
      verbose_name="Activo",
      help_text="Indica si el alumno se encuentra matriculado actualmente.",
  )
  fecha_registro = models.DateTimeField(
      auto_now_add=True, null=True, blank=True, verbose_name="Fecha de Registro"
  )
  ultima_actualizacion = models.DateTimeField(
      auto_now=True, null=True, blank=True ,verbose_name="Última Actualización"
  )

  class Meta:
    verbose_name = "Alumno"
    verbose_name_plural = "Alumnos"
    ordering = ["apellido", "nombre"]

  def __str__(self):
    return f"{self.apellido}, {self.nombre} - {self.rut}"

class Curso(models.Model):
  # Información básica del curso
  nombre = models.CharField(
      max_length=100,
      verbose_name="Nombre del Curso",
      help_text="Ej: Primero Medio A, Matemáticas Avanzadas",
  )
  codigo = models.CharField(
      max_length=50,
      blank=True,
      null=True,
      verbose_name="Código de Curso",
      help_text="Ej: MAT-101 (Sin restricción de unicidad)",
  )
  nivel = models.CharField(
      max_length=50, blank=True, null=True, verbose_name="Nivel o Grado"
  )
  descripcion = models.TextField(
      blank=True, null=True, verbose_name="Descripción del Curso"
  )

  # Metadatos y control
  activo = models.BooleanField(
      default=True,
      verbose_name="Activo",
      help_text="Indica si el curso se encuentra impartiendo actualmente.",
  )
  fecha_creacion = models.DateTimeField(
      auto_now_add=True, null=True, blank=True, verbose_name="Fecha de Creación"
  )
  ultima_actualizacion = models.DateTimeField(
        auto_now=True, null=True, blank=True, verbose_name="Última Actualización"
    )

  class Meta:
    verbose_name = "Curso"
    verbose_name_plural = "Cursos"
    ordering = ["nombre"]

  def __str__(self):
    return self.nombre