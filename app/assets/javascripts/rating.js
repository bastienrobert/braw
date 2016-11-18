var rating = {
  elements: document.querySelectorAll('.rating'),
  onchange: function(rating) {
    return function() {
      var fieldset = this.parentNode;
      var input = fieldset.querySelector('input[type="hidden"]');

      input.value = rating;
    };
  },
  init: function(element) {
    if(element) {
      var checkboxes = element.querySelectorAll('input[type="radio"]');
      for(var i = 0; i < checkboxes.length; i++) checkboxes[i].addEventListener('change', this.onchange(checkboxes.length - i));
    }
    else {
      for(var i = 0; i < this.elements.length; i++) this.init(this.elements[i]);
    }
  }
};

rating.init();
