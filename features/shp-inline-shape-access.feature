Feature: Access inline shapes in document
  In order to query or manipulate inline shapes in a document
  As an python-docx developer
  I need the ability to access the inline shapes in a document

  Scenario: Access inline shapes collection of document
     Given a document containing two inline shapes
      Then I can access the inline shape collection of the document
       And the length of the inline shape collection is 2

  Scenario: Access shape in inline shape collection
     Given an inline shape collection containing two shapes
      Then I can iterate over the inline shape collection
       And I can access an inline shape by index

  @wip
  Scenario Outline: Identify type of inline shape
     Given an inline shape known to be <shape of type>
      Then its inline shape type is <shape type>

   Examples: Inline shapes of recognized types
     | shape of type       | shape type                     |
     | an embedded picture | WD_INLINE_SHAPE.PICTURE        |
     | a linked picture    | WD_INLINE_SHAPE.LINKED_PICTURE |