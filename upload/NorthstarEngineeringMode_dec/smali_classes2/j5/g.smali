.class public final Lj5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 93

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "assert"

    const-string v2, "abstract"

    const-string v3, "boolean"

    const-string v4, "break"

    const-string v5, "byte"

    const-string v6, "case"

    const-string v7, "catch"

    const-string v8, "char"

    const-string v9, "class"

    const-string v10, "const"

    const-string v11, "continue"

    const-string v12, "default"

    const-string v13, "do"

    const-string v14, "double"

    const-string v15, "else"

    const-string v16, "enum"

    const-string v17, "extends"

    const-string v18, "false"

    const-string v19, "final"

    const-string v20, "finally"

    const-string v21, "float"

    const-string v22, "for"

    const-string v23, "goto"

    const-string v24, "if"

    const-string v25, "implements"

    const-string v26, "import"

    const-string v27, "instanceof"

    const-string v28, "int"

    const-string v29, "interface"

    const-string v30, "long"

    const-string v31, "native"

    const-string v32, "new"

    const-string v33, "null"

    const-string v34, "package"

    const-string v35, "private"

    const-string v36, "protected"

    const-string v37, "public"

    const-string v38, "return"

    const-string v39, "short"

    const-string v40, "static"

    const-string v41, "strictfp"

    const-string v42, "super"

    const-string v43, "switch"

    const-string v44, "synchronized"

    const-string v45, "this"

    const-string v46, "threadsafe"

    const-string v47, "throw"

    const-string v48, "throws"

    const-string v49, "transient"

    const-string v50, "true"

    const-string v51, "try"

    const-string v52, "void"

    const-string v53, "volatile"

    const-string v54, "while"

    filled-new-array/range {v1 .. v54}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "org"

    const-string v2, "com"

    const-string v3, "i"

    const-string v4, "target"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "CharSequence"

    const-string v2, "Cloneable"

    const-string v3, "Comparable"

    const-string v4, "Runnable"

    const-string v5, "Boolean"

    const-string v6, "Byte"

    const-string v7, "Character"

    const-string v8, "Class"

    const-string v9, "ClassLoader"

    const-string v10, "Compiler"

    const-string v11, "Double"

    const-string v12, "Float"

    const-string v13, "InheritableThreadLocal"

    const-string v14, "Integer"

    const-string v15, "Long"

    const-string v16, "Math"

    const-string v17, "Number"

    const-string v18, "Object"

    const-string v19, "Package"

    const-string v20, "Process"

    const-string v21, "Runtime"

    const-string v22, "RuntimePermission"

    const-string v23, "SecurityManager"

    const-string v24, "Short"

    const-string v25, "StackTraceElement"

    const-string v26, "StrictMath"

    const-string v27, "String"

    const-string v28, "StringBuffer"

    const-string v29, "System"

    const-string v30, "Thread"

    const-string v31, "ThreadGroup"

    const-string v32, "ThreadLocal"

    const-string v33, "Throwable"

    const-string v34, "Void"

    const-string v35, "ArithmeticException"

    const-string v36, "ArrayIndexOutOfBoundsException"

    const-string v37, "ArrayStoreException"

    const-string v38, "ClassCastException"

    const-string v39, "ClassNotFoundException"

    const-string v40, "CloneNotSupportedException"

    const-string v41, "Exception"

    const-string v42, "IllegalAccessException"

    const-string v43, "IllegalArgumentException"

    const-string v44, "IllegalMonitorStateException"

    const-string v45, "IllegalStateException"

    const-string v46, "IllegalThreadStateException"

    const-string v47, "IndexOutOfBoundsException"

    const-string v48, "InstantiationException"

    const-string v49, "InterruptedException"

    const-string v50, "NegativeArraySizeException"

    const-string v51, "NoSuchFieldException"

    const-string v52, "NoSuchMethodException"

    const-string v53, "NullPointerException"

    const-string v54, "NumberFormatException"

    const-string v55, "RuntimeException"

    const-string v56, "SecurityException"

    const-string v57, "StringIndexOutOfBoundsException"

    const-string v58, "UnsupportedOperationException"

    const-string v59, "AbstractMethodError"

    const-string v60, "AssertionError"

    const-string v61, "ClassCircularityError"

    const-string v62, "ClassFormatError"

    const-string v63, "Error"

    const-string v64, "ExceptionInInitializerError"

    const-string v65, "IllegalAccessError"

    const-string v66, "IncompatibleClassChangeError"

    const-string v67, "InstantiationError"

    const-string v68, "InternalError"

    const-string v69, "LinkageError"

    const-string v70, "NoClassDefFoundError"

    const-string v71, "NoSuchFieldError"

    const-string v72, "NoSuchMethodError"

    const-string v73, "OutOfMemoryError"

    const-string v74, "StackOverflowError"

    const-string v75, "ThreadDeath"

    const-string v76, "UnknownError"

    const-string v77, "UnsatisfiedLinkError"

    const-string v78, "UnsupportedClassVersionError"

    const-string v79, "VerifyError"

    const-string v80, "VirtualMachineError"

    const-string v81, "BigInteger"

    const-string v82, "BigDecimal"

    const-string v83, "Enum"

    const-string v84, "Date"

    const-string v85, "GDate"

    const-string v86, "GDuration"

    const-string v87, "QName"

    const-string v88, "List"

    const-string v89, "XmlObject"

    const-string v90, "XmlCursor"

    const-string v91, "XmlBeans"

    const-string v92, "SchemaType"

    filled-new-array/range {v1 .. v92}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-virtual {v1, v0, p0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public static b(C)I
    .locals 2

    const/16 v0, 0x2d

    const/4 v1, 0x1

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_6

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_6

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x387

    if-eq p0, v0, :cond_6

    const/16 v0, 0x6dd

    if-eq p0, v0, :cond_6

    const/16 v0, 0x6de

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_0
    return v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_d

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lj5/g;->b(C)I

    move-result v7

    const/4 v8, 0x1

    if-eq v6, v8, :cond_2

    if-ne v7, v8, :cond_2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lj5/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lj5/g;->b(C)I

    move-result v5

    if-ne v5, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_0

    goto/16 :goto_a

    :cond_1
    move v6, v5

    move v5, v4

    goto/16 :goto_9

    :cond_2
    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    move v10, v8

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    if-ne v7, v9, :cond_4

    move v9, v8

    goto :goto_2

    :cond_4
    move v9, v3

    :goto_2
    if-ne v10, v9, :cond_c

    const/4 v9, 0x5

    if-ne v6, v9, :cond_5

    if-ne v7, v9, :cond_c

    :cond_5
    const/4 v10, 0x6

    const/4 v11, 0x4

    if-eq v6, v11, :cond_7

    if-eq v6, v9, :cond_7

    if-ne v6, v10, :cond_6

    goto :goto_3

    :cond_6
    move v12, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v12, v8

    :goto_4
    if-eq v7, v11, :cond_9

    if-eq v7, v9, :cond_9

    if-ne v7, v10, :cond_8

    goto :goto_5

    :cond_8
    move v10, v3

    goto :goto_6

    :cond_9
    :goto_5
    move v10, v8

    :goto_6
    if-eq v12, v10, :cond_a

    goto :goto_8

    :cond_a
    if-ne v6, v11, :cond_b

    if-ne v7, v9, :cond_b

    add-int/lit8 v6, v5, 0x1

    if-le v4, v6, :cond_b

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lj5/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v5, v6

    :cond_b
    :goto_7
    move v6, v7

    goto :goto_9

    :cond_c
    :goto_8
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lj5/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    move v5, v4

    goto :goto_7

    :goto_9
    add-int/2addr v4, v8

    goto :goto_0

    :cond_d
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lj5/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_f

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "X"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
