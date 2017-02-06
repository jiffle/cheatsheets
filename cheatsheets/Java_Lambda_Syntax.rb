cheatsheet do
  title 'Java Lambda Syntax'
  docset_file_name 'Java_Lambda_Syntax'
  keyword 'javal'
  source_url 'http://cheat.kapeli.com'

  category do
    id 'Java Lambda Syntax'
    entry do
        name 'As an expression'
        notes <<-'END'
        ```java
        (Person p) -> p.getGender() == Person.Sex.MALE
            && p.getAge() >= 18
            && p.getAge() <= 25
        ```
        END
    end
    entry do
        name 'As a local variable'
        notes <<-'END'
        ```java
        @FunctionalInterface
        public interface SomeFunction {
            public void doWork();
        }

        SomeFunction lambdaName = () -> {...};
        ```
        END
    end
    entry do
        name 'As a method parameter'
        notes <<-'END'
        ```java
        @FunctionalInterface
        public interface SomeFunction {
            public void doWork();
        }

        void someMethodThatTakesALambda(SomeFunction lambdaName) {...}
        ```
        END
    end
    entry do
        name 'As an argument to a method call'
        notes <<-'END'
        ```java
        someObject.someMethodThatTakesALambda ((ParameterClass p) -> {...});
        ```
        END
    end
  end
  category do
    id 'Java Streams Usage'
    entry do
        name 'Transforming a list of items'
        notes <<-'END'
        ```java
        return list.stream().map( this::buildItem).collect( Collectors.toList());
        ```
        END
    end
  end
  category do
    id 'Java Optional Usage'
    entry do
        name 'Conditional test for non-null value'
        notes <<-'END'
        Invoking a method on the variable with no return value
        
        ```java
        opt.ifPresent(this::print);
        ```
        
        Passing the (non-null) variable into method with no return value
        
        ```java
        opt.ifPresent(x -> print(x));
        ```
        
        Passing the (non-null) variable into method and returning a result (and with value for null)
        
        ```java
        opt.map(y -> y ^ 2).orElse( -1);
        ```
        END
    end
  end
  notes <<-'END'
    * Based on a [cheat sheet](http://fuckingjavalambdasyntax.com/) by [Alex Florescu](http://florescu.org/)
  END
end
