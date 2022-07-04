# Formularios

```erb
<%= form_with do |form| %>
    <%= form.label :usuario, "Usuario" %>
    <%= form.text_field :usuario %>

    <br />
    <%= form.label :contrasena, "Contraseña" %>
    <%= form.password_field :contrasena %>

    <br />
    <%= form.check_box :pet_dog %>
    <%= form.label :pet_dog, "Poseo un perro" %>
    <%= form.check_box :pet_cat %>
    <%= form.label :pet_dog, "Poseo un gato" %>

    <br />
    <%= form.label :color, "Color preferido" %>
    <%= form.color_field :color %>

    <br />
    <%= form.radio_button :sexo, "M" %>
    <%= form.label :sexo_m, "Masculino" %>
    <%= form.radio_button :sexo, "F" %>
    <%= form.label :sexo_f, "Femenino" %>

    <br />
    <%= form.range_field :rango, in: 1..10 %>

    <br />
    <%= form.date_field :nacimiento %>
<% end %>
```