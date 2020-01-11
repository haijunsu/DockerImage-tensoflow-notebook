ARG BASE_CONTAINER=jupyter/tensorflow-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Haijun (Navy) Su <navysu@gmail.com>"

# Install dependencies
RUN pip install \
    'openpyxl==3.0.3' autopep8 isort & \
    conda install -c conda-forge jupyter_contrib_nbextensions

RUN jupyter contrib nbextension install --user &\
      jupyter nbextension enable autoscroll/main &\
      jupyter nbextension enable runtools/main &\
      jupyter nbextension enable scratchpad/main &\
      jupyter nbextension enable toc2/main &\
      jupyter nbextension enable code_prettify/autopep8 &\
      jupyter nbextension enable table_beautifier/main &\
      jupyter nbextension enable snippets/main &\
      jupyter nbextension enable snippets_menu/main &\
      jupyter nbextension enable printview/main &\
      jupyter nbextension enable scroll_down/main &\
      jupyter nbextension enable python-markdown/main &\
      jupyter nbextension enable nbextensions_configurator/tree_tab/main &\
      jupyter nbextension enable highlight_selected_word/main &\
      jupyter nbextension enable code_prettify/isort &\
      jupyter nbextension enable select_keymap/main &\
      jupyter nbextension enable codefolding/main &\
      jupyter nbextension enable spellchecker/main &\
      jupyter nbextension enable tree-filter/index &\
      jupyter nbextension enable codefolding/edit



