.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;
.super Ljava/lang/Object;
.source "CommandLine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Interpreter"
.end annotation


# instance fields
.field private final command:Ljava/lang/Object;

.field private final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;"
        }
    .end annotation
.end field

.field private final converterRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private isHelpRequested:Z

.field private final optionName2Field:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private final positionalParametersFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final requiredFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;

.field private final singleCharOption2Field:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/Object;)V
    .locals 17
    .param p2, "command"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            "this$0",
            "command"
        }
    .end annotation

    .line 1872
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iput-object v0, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1861
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    .line 1862
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    .line 1863
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    .line 1864
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->singleCharOption2Field:Ljava/util/Map;

    .line 1865
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->requiredFields:Ljava/util/List;

    .line 1866
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    .line 1869
    const-string v3, "="

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    .line 1873
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/nio/file/Path;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$PathConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$PathConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Object;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$StringConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$StringConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/String;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$StringConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$StringConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1876
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/StringBuilder;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$StringBuilderConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$StringBuilderConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/CharSequence;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharSequenceConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharSequenceConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Byte;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ByteConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ByteConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1879
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ByteConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ByteConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1880
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Boolean;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BooleanConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BooleanConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1881
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BooleanConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BooleanConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1882
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Character;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharacterConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharacterConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1883
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharacterConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharacterConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Short;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ShortConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ShortConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ShortConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ShortConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1886
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Integer;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$IntegerConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$IntegerConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$IntegerConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$IntegerConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1888
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Long;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$LongConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$LongConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1889
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$LongConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$LongConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1890
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Float;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$FloatConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$FloatConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1891
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$FloatConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$FloatConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1892
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/lang/Double;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$DoubleConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$DoubleConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$DoubleConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$DoubleConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1894
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/io/File;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$FileConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$FileConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/net/URI;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$URIConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$URIConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1896
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/net/URL;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$URLConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$URLConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1897
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/util/Date;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ISO8601DateConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ISO8601DateConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/sql/Time;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ISO8601TimeConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$ISO8601TimeConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/math/BigDecimal;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BigDecimalConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BigDecimalConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/math/BigInteger;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BigIntegerConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$BigIntegerConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1901
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/nio/charset/Charset;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharsetConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$CharsetConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/net/InetAddress;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$InetAddressConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$InetAddressConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1903
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/util/regex/Pattern;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$PatternConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$PatternConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1904
    iget-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    const-class v4, Ljava/util/UUID;

    new-instance v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$UUIDConverter;

    invoke-direct {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$BuiltIn$UUIDConverter;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    const-string v3, "command"

    invoke-static {v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    .line 1907
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1908
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 1909
    .local v4, "declaredName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1910
    .local v5, "declaredSeparator":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1911
    .local v6, "hasCommandAnnotation":Z
    :goto_0
    if-eqz v3, :cond_5

    .line 1912
    iget-object v7, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->requiredFields:Ljava/util/List;

    iget-object v8, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    iget-object v9, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->singleCharOption2Field:Ljava/util/Map;

    iget-object v10, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-static {v3, v7, v8, v9, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->init(Ljava/lang/Class;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 1913
    const-class v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1914
    const/4 v6, 0x1

    .line 1915
    const-class v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    invoke-virtual {v3, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    .line 1916
    .local v7, "cmd":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    if-nez v5, :cond_0

    invoke-interface {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->separator()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_0
    move-object v8, v5

    :goto_1
    move-object v5, v8

    .line 1917
    if-nez v4, :cond_1

    invoke-interface {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->name()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_1
    move-object v8, v4

    :goto_2
    move-object v4, v8

    .line 1918
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->version()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1920
    invoke-interface {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->subcommands()[Ljava/lang/Class;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_3

    aget-object v12, v8, v11

    .line 1921
    .local v12, "sub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v13

    check-cast v13, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;

    .line 1922
    .local v13, "subCommand":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    if-eqz v13, :cond_2

    invoke-interface {v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->name()Ljava/lang/String;

    move-result-object v14

    const-string v15, "<main class>"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1927
    :try_start_0
    new-array v14, v10, [Ljava/lang/Class;

    invoke-virtual {v12, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v14

    .line 1928
    .local v14, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1929
    new-array v15, v10, [Ljava/lang/Object;

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1200(Ljava/lang/Object;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    move-result-object v15

    .line 1930
    .local v15, "commandLine":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    invoke-static {v15, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1302(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    .line 1931
    iget-object v10, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v16, v4

    .end local v4    # "declaredName":Ljava/lang/String;
    .local v16, "declaredName":Ljava/lang/String;
    :try_start_1
    invoke-interface {v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1939
    nop

    .line 1920
    .end local v12    # "sub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "subCommand":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    .end local v14    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v15    # "commandLine":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v16

    const/4 v10, 0x0

    goto :goto_3

    .line 1936
    .restart local v12    # "sub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "subCommand":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1934
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1933
    :catch_2
    move-exception v0

    goto :goto_6

    .line 1936
    .end local v16    # "declaredName":Ljava/lang/String;
    .restart local v4    # "declaredName":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 1937
    .end local v4    # "declaredName":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v16    # "declaredName":Ljava/lang/String;
    :goto_4
    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not instantiate and add subcommand "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1934
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v16    # "declaredName":Ljava/lang/String;
    .restart local v4    # "declaredName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "declaredName":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    .restart local v16    # "declaredName":Ljava/lang/String;
    :goto_5
    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot instantiate subcommand "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1935
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": the class has no constructor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 1933
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v16    # "declaredName":Ljava/lang/String;
    .restart local v4    # "declaredName":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "declaredName":Ljava/lang/String;
    .local v0, "ex":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;
    .restart local v16    # "declaredName":Ljava/lang/String;
    :goto_6
    throw v0

    .line 1922
    .end local v0    # "ex":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;
    .end local v16    # "declaredName":Ljava/lang/String;
    .restart local v4    # "declaredName":Ljava/lang/String;
    :cond_2
    move-object/from16 v16, v4

    .line 1923
    .end local v4    # "declaredName":Ljava/lang/String;
    .restart local v16    # "declaredName":Ljava/lang/String;
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subcommand "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is missing the mandatory @Command annotation with a \'name\' attribute"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1920
    .end local v12    # "sub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "subCommand":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    .end local v16    # "declaredName":Ljava/lang/String;
    .restart local v4    # "declaredName":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v4

    .line 1942
    .end local v7    # "cmd":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Command;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto/16 :goto_0

    .line 1944
    :cond_5
    if-eqz v5, :cond_6

    move-object v7, v5

    goto :goto_7

    :cond_6
    iget-object v7, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    :goto_7
    iput-object v7, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    .line 1945
    if-eqz v4, :cond_7

    move-object v7, v4

    goto :goto_8

    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1400(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/lang/String;

    move-result-object v7

    :goto_8
    invoke-static {v0, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1402(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    .line 1946
    iget-object v0, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    new-instance v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;)V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1947
    iget-object v0, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->validatePositionalParameters(Ljava/util/List;)V

    .line 1949
    iget-object v0, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v6, :cond_8

    goto :goto_9

    .line 1950
    :cond_8
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ") is not a command: it has no @Command, @Option or @Parameters annotations"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1953
    :cond_9
    :goto_9
    return-void
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    .line 1860
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    .line 1860
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    .line 1860
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    .line 1860
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1860
    iput-object p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    return-object p1
.end method

.method private applyOption(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;ZLjava/util/Stack;Ljava/util/Set;Ljava/lang/String;)I
    .locals 13
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p4, "valueAttachedToOption"    # Z
    .param p7, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "annotation",
            "arity",
            "valueAttachedToOption",
            "args",
            "initialized",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Z",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2217
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p6, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->updateHelpRequested(Ljava/lang/reflect/Field;)V

    .line 2218
    invoke-virtual/range {p5 .. p5}, Ljava/util/Stack;->size()I

    move-result v0

    .line 2219
    .local v0, "length":I
    move-object/from16 v8, p3

    iget v1, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    move-object v9, p0

    move-object v10, p1

    move-object/from16 v11, p5

    invoke-direct {p0, p1, v1, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->assertNoMissingParameters(Ljava/lang/reflect/Field;ILjava/util/Stack;)V

    .line 2221
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 2222
    .local v12, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2223
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, v12

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyValuesToArrayField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2225
    :cond_0
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2226
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, v12

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyValuesToCollectionField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2228
    :cond_1
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2229
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, v12

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyValuesToMapField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2231
    :cond_2
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2500(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v12, v1, v2

    .line 2232
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object v5, v12

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyValueToSingleValuedField(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private applyValueToSingleValuedField(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/util/Set;Ljava/lang/String;)I
    .locals 19
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p6, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "arity",
            "args",
            "cls",
            "initialized",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2241
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->isEmpty()Z

    move-result v11

    .line 2242
    .local v11, "noMoreValues":Z
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2243
    .local v0, "value":Ljava/lang/String;
    :goto_0
    iget v1, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    .line 2246
    .local v1, "result":I
    const-class v2, Ljava/lang/Boolean;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eq v9, v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v2, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v14, p3

    goto :goto_5

    :cond_2
    :goto_1
    iget v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-gtz v2, :cond_8

    .line 2249
    iget v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-lez v2, :cond_4

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2250
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v14, p3

    move-object v15, v0

    move/from16 v16, v1

    goto :goto_6

    .line 2252
    :cond_4
    if-eqz v0, :cond_5

    .line 2253
    move-object/from16 v14, p3

    invoke-virtual {v14, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2252
    :cond_5
    move-object/from16 v14, p3

    .line 2255
    :goto_2
    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 2256
    .local v2, "currentValue":Ljava/lang/Boolean;
    if-nez v2, :cond_6

    :goto_3
    move v3, v12

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move v3, v13

    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move/from16 v16, v1

    goto :goto_6

    .line 2246
    .end local v2    # "currentValue":Ljava/lang/Boolean;
    :cond_8
    move-object/from16 v14, p3

    .line 2259
    :goto_5
    move-object v15, v0

    move/from16 v16, v1

    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "result":I
    .local v15, "value":Ljava/lang/String;
    .local v16, "result":I
    :goto_6
    if-eqz v11, :cond_9

    if-nez v15, :cond_9

    .line 2260
    return v13

    .line 2262
    :cond_9
    invoke-direct {v6, v9, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->getTypeConverter(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;

    move-result-object v17

    .line 2263
    .local v17, "converter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v17

    move-object v4, v15

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->tryConvert(Ljava/lang/reflect/Field;ILorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2264
    .local v0, "newValue":Ljava/lang/Object;
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2265
    .local v1, "oldValue":Ljava/lang/Object;
    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->INFO:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    .line 2266
    .local v2, "level":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    const-string v3, "Setting %s field \'%s.%s\' to \'%5$s\' (was \'%4$s\') for %6$s%n"

    .line 2267
    .local v3, "traceMessage":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 2268
    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2269
    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isOverwrittenOptionsAllowed()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2272
    sget-object v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->WARN:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    .line 2273
    const-string v3, "Overwriting %s field \'%s.%s\' value \'%s\' with \'%s\' for %s%n"

    goto :goto_7

    .line 2270
    :cond_a
    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$OverwrittenOptionException;

    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    .end local v2    # "level":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    .local v18, "level":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    const-string v2, ""

    invoke-direct {v6, v2, v7, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should be specified only once"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$OverwrittenOptionException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v4

    .line 2268
    .end local v18    # "level":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    .restart local v2    # "level":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;
    :cond_b
    move-object/from16 v18, v2

    .line 2275
    :goto_7
    invoke-interface {v10, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2267
    :cond_c
    move-object/from16 v18, v2

    .line 2277
    :goto_8
    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->level:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;

    invoke-virtual {v4, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->isEnabled(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v13

    .line 2278
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x5

    aput-object p6, v5, v12

    .line 2277
    invoke-static {v2, v4, v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;->access$2600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TraceLevel;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2280
    :cond_d
    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v7, v4, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2281
    return v16
.end method

.method private applyValuesToArrayField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/lang/String;)I
    .locals 13
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p6, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "annotation",
            "arity",
            "args",
            "cls",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2369
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, p0

    move-object v9, p1

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2370
    .local v10, "existing":Ljava/lang/Object;
    const/4 v0, 0x0

    if-nez v10, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v10}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    :goto_0
    move v11, v1

    .line 2371
    .local v11, "length":I
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2500(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v1

    aget-object v12, v1, v0

    .line 2372
    .local v12, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move v6, v11

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeArguments(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2373
    .local v0, "converted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2374
    .local v1, "newValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 2375
    invoke-static {v10, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2374
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2377
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2378
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 2379
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 2381
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2383
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_3
    goto :goto_2

    .line 2384
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v12, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 2385
    .local v2, "array":Ljava/lang/Object;
    iget-object v3, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2386
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 2387
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 2386
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2389
    .end local v3    # "i":I
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    return v3
.end method

.method private applyValuesToCollectionField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/lang/String;)I
    .locals 12
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p6, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "annotation",
            "arity",
            "args",
            "cls",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2399
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v8, p0

    move-object v9, p1

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/Collection;

    .line 2400
    .local v10, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2500(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 2401
    .local v11, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v0

    move v6, v0

    .line 2402
    .local v6, "length":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v11

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeArguments(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2403
    .local v0, "converted":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v10, :cond_1

    .line 2404
    move-object/from16 v1, p5

    invoke-direct {p0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->createCollection(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v10

    .line 2405
    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {p1, v2, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2403
    :cond_1
    move-object/from16 v1, p5

    .line 2407
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2408
    .local v3, "element":Ljava/lang/Object;
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 2409
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v10, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 2411
    :cond_2
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2413
    .end local v3    # "element":Ljava/lang/Object;
    :goto_3
    goto :goto_2

    .line 2414
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    return v2
.end method

.method private applyValuesToMapField(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/lang/String;)I
    .locals 17
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p6, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "annotation",
            "arity",
            "args",
            "cls",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2289
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-static/range {p1 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2500(Ljava/lang/reflect/Field;)[Ljava/lang/Class;

    move-result-object v11

    .line 2290
    .local v11, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, v11

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 2291
    const/4 v0, 0x0

    aget-object v0, v11, v0

    invoke-direct {v9, v0, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->getTypeConverter(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;

    move-result-object v12

    .line 2292
    .local v12, "keyConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    const/4 v0, 0x1

    aget-object v0, v11, v0

    invoke-direct {v9, v0, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->getTypeConverter(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;

    move-result-object v13

    .line 2293
    .local v13, "valueConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    iget-object v0, v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v10, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 2294
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 2295
    move-object/from16 v14, p5

    invoke-direct {v9, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->createMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 2296
    iget-object v1, v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v10, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v15, v0

    goto :goto_0

    .line 2294
    :cond_0
    move-object/from16 v14, p5

    move-object v15, v0

    .line 2298
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v15, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v16

    .line 2299
    .local v16, "originalSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeMapArguments(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;[Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/util/Map;Ljava/lang/String;)V

    .line 2300
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v0

    sub-int v0, v0, v16

    return v0

    .line 2290
    .end local v12    # "keyConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .end local v13    # "valueConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .end local v15    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v16    # "originalSize":I
    :cond_1
    move-object/from16 v14, p5

    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    iget-object v1, v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " needs two types (one for the map key, one for the value) but only has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " types configured."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v0
.end method

.method private assertNoMissingParameters(Ljava/lang/reflect/Field;ILjava/util/Stack;)V
    .locals 11
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "arity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "arity",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2583
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result v0

    if-le p2, v0, :cond_7

    .line 2584
    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 2585
    const-class v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2589
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v0

    .line 2590
    .local v0, "indexRange":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createMinimalParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    move-result-object v1

    .line 2591
    .local v1, "labelRenderer":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    const-string v3, ""

    .line 2592
    .local v3, "sep":Ljava/lang/String;
    const-string v4, ""

    .line 2593
    .local v4, "names":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2594
    .local v5, "count":I
    iget v6, v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    .local v6, "i":I
    :goto_0
    iget-object v7, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2595
    iget-object v7, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    invoke-static {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v7

    iget v7, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-lez v7, :cond_0

    .line 2596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    sget-object v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    .line 2597
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 2596
    invoke-interface {v1, v8, v9, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2598
    const-string v3, ", "

    .line 2599
    add-int/lit8 v5, v5, 0x1

    .line 2594
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2602
    .end local v6    # "i":I
    :cond_1
    const-string v6, "Missing required parameter"

    .line 2603
    .local v6, "msg":Ljava/lang/String;
    invoke-static {p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v7

    .line 2604
    .local v7, "paramArity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget-boolean v8, v7, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->isVariable:Z

    const-string v9, ": "

    if-nez v8, :cond_3

    .line 2607
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v5, v2, :cond_2

    const-string v9, "s: "

    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v6    # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    goto :goto_1

    .line 2605
    .end local v2    # "msg":Ljava/lang/String;
    .restart local v6    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "s at positions "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2609
    .end local v6    # "msg":Ljava/lang/String;
    .restart local v2    # "msg":Ljava/lang/String;
    :goto_1
    new-instance v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    iget-object v8, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v6

    .line 2586
    .end local v0    # "indexRange":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .end local v1    # "labelRenderer":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "sep":Ljava/lang/String;
    .end local v4    # "names":Ljava/lang/String;
    .end local v5    # "count":I
    .end local v7    # "paramArity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    :cond_4
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing required parameter for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2587
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v2

    .line 2611
    :cond_5
    invoke-virtual {p3}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    const-string v3, " requires at least "

    if-eqz v2, :cond_6

    .line 2612
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " values, but none were specified."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v2

    .line 2615
    :cond_6
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " values, but only "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2616
    invoke-virtual {p3}, Ljava/util/Stack;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " were specified: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2200(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v2

    .line 2618
    :cond_7
    return-void
.end method

.method private checkMaxArityExceeded(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;ILjava/lang/reflect/Field;[Ljava/lang/String;)V
    .locals 6
    .param p1, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p2, "remainder"    # I
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "arity",
            "remainder",
            "field",
            "values"
        }
    .end annotation

    .line 2356
    array-length v0, p4

    if-gt v0, p2, :cond_0

    return-void

    .line 2357
    :cond_0
    iget v0, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    const-string v1, ""

    if-ne v0, p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", remainder="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2358
    .local v0, "desc":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MaxValuesforFieldExceededException;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, -0x1

    invoke-direct {p0, v1, p3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " max number of values ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") exceeded: remainder is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " but "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " values were specified: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2360
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MaxValuesforFieldExceededException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v2
.end method

.method private consumeArguments(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;ILjava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p3, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p6, "originalSize"    # I
    .param p7, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "annotation",
            "arity",
            "args",
            "type",
            "originalSize",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2424
    .local p2, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, p0

    move-object/from16 v10, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2427
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    iget v0, v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-ge v12, v0, :cond_0

    .line 2428
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v11

    move v6, v12

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeOneArgument(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/util/List;IILjava/lang/String;)I

    .line 2427
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2431
    .end local v12    # "i":I
    :cond_0
    iget v0, v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    move v12, v0

    .restart local v12    # "i":I
    :goto_1
    iget v0, v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-ge v12, v0, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2432
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    move-object/from16 v13, p2

    if-eq v13, v0, :cond_2

    .line 2433
    iget-object v0, v9, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2434
    :cond_1
    return-object v11

    .line 2437
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v11

    move v6, v12

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeOneArgument(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/util/List;IILjava/lang/String;)I

    .line 2431
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v13, p2

    .line 2439
    .end local v12    # "i":I
    return-object v11
.end method

.method private consumeMapArguments(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;[Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p8, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "arity",
            "args",
            "classes",
            "keyConverter",
            "valueConverter",
            "result",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2312
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p4, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p5, "keyConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .local p6, "valueConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .local p7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v10, p0

    move-object/from16 v11, p2

    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    iget v0, v11, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-ge v12, v0, :cond_0

    .line 2313
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeOneMapArgument(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;[Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/util/Map;ILjava/lang/String;)V

    .line 2312
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2316
    .end local v12    # "i":I
    :cond_0
    iget v0, v11, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    move v12, v0

    .restart local v12    # "i":I
    :goto_1
    iget v0, v11, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    if-ge v12, v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2317
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    move-object v13, p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2318
    iget-object v0, v10, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2319
    :cond_1
    return-void

    .line 2322
    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->consumeOneMapArgument(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;[Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/util/Map;ILjava/lang/String;)V

    .line 2316
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    move-object v13, p1

    .line 2324
    .end local v12    # "i":I
    return-void
.end method

.method private consumeOneArgument(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;Ljava/lang/Class;Ljava/util/List;IILjava/lang/String;)I
    .locals 16
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p6, "index"    # I
    .param p7, "originalSize"    # I
    .param p8, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "field",
            "arity",
            "args",
            "type",
            "result",
            "index",
            "originalSize",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;II",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2450
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->split(Ljava/lang/String;Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v9

    .line 2451
    .local v9, "values":[Ljava/lang/String;
    move-object/from16 v10, p4

    invoke-direct {v6, v10, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->getTypeConverter(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;

    move-result-object v11

    .line 2453
    .local v11, "converter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_0
    array-length v0, v9

    const/4 v13, 0x1

    if-ge v12, v0, :cond_2

    .line 2454
    aget-object v4, v9, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    move-object v3, v11

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->tryConvert(Ljava/lang/reflect/Field;ILorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2455
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2456
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v13

    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v1, v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aput-object p8, v1, v2

    const-string v2, "Adding [%s] to %s[] field \'%s.%s\' for %s%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2459
    :cond_0
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v13

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v13

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v14, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    aput-object p8, v14, v1

    const-string v1, "Adding [%s] to %s<%s> field \'%s.%s\' for %s%n"

    invoke-virtual {v0, v1, v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2453
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 2464
    .end local v12    # "j":I
    :cond_2
    add-int/lit8 v0, p6, 0x1

    .end local p6    # "index":I
    .local v0, "index":I
    return v0
.end method

.method private consumeOneMapArgument(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;Ljava/util/Stack;[Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/util/Map;ILjava/lang/String;)V
    .locals 17
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "arity"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .param p8, "index"    # I
    .param p9, "argDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "arity",
            "args",
            "classes",
            "keyConverter",
            "valueConverter",
            "result",
            "index",
            "argDescription"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2334
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p4, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p5, "keyConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .local p6, "valueConverter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .local p7, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->split(Ljava/lang/String;Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v8

    .line 2335
    .local v8, "values":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_3

    aget-object v12, v8, v11

    .line 2336
    .local v12, "value":Ljava/lang/String;
    const-string v0, "="

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2337
    .local v13, "keyValue":[Ljava/lang/String;
    array-length v0, v13

    const/4 v14, 0x2

    if-ge v0, v14, :cond_1

    .line 2338
    invoke-direct/range {p0 .. p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->splitRegex(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 2339
    .local v0, "splitRegex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, ""

    const-string v3, "Value for option "

    if-nez v1, :cond_0

    .line 2340
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v6, v2, v7, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should be in KEY=VALUE format but was "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v1

    .line 2343
    :cond_0
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v6, v2, v7, v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should be in KEY=VALUE["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "KEY=VALUE]... format but was "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v1

    .line 2347
    .end local v0    # "splitRegex":Ljava/lang/String;
    :cond_1
    aget-object v4, v13, v10

    aget-object v5, p4, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p8

    move-object/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->tryConvert(Ljava/lang/reflect/Field;ILorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    .line 2348
    .local v15, "mapKey":Ljava/lang/Object;
    const/16 v16, 0x1

    aget-object v4, v13, v16

    aget-object v5, p4, v16

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->tryConvert(Ljava/lang/reflect/Field;ILorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2349
    .local v0, "mapValue":Ljava/lang/Object;
    move-object/from16 v1, p7

    invoke-interface {v1, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2350
    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isInfo()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v16

    .line 2351
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    const/4 v4, 0x3

    aget-object v5, p4, v10

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aget-object v5, p4, v16

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    aput-object p9, v3, v4

    .line 2350
    const-string v4, "Putting [%s : %s] in %s<%s, %s> field \'%s.%s\' for %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2335
    .end local v0    # "mapValue":Ljava/lang/Object;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "keyValue":[Ljava/lang/String;
    .end local v15    # "mapKey":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 2353
    :cond_3
    move-object/from16 v1, p7

    return-void
.end method

.method private createCollection(Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "collectionClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2546
    .local p1, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2547
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2548
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0

    .line 2549
    :cond_0
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2550
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0

    .line 2551
    :cond_1
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2552
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0

    .line 2554
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 2557
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method private createMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mapClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2561
    .local p1, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2562
    :catch_0
    move-exception v0

    .line 2563
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method private getTypeConverter(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;
    .locals 5
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;"
        }
    .end annotation

    .line 2566
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->converterRegistry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;

    .line 2567
    .local v0, "result":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    if-eqz v0, :cond_0

    .line 2568
    return-object v0

    .line 2570
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2571
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter$1;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;Ljava/lang/Class;)V

    return-object v1

    .line 2579
    :cond_1
    new-instance v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingTypeConverterException;

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No TypeConverter registered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " of field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingTypeConverterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v1
.end method

.method private handleUnmatchedArguments(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    .line 2093
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .local v0, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->handleUnmatchedArguments(Ljava/util/Stack;)V

    return-void
.end method

.method private handleUnmatchedArguments(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2095
    .local p1, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2096
    :cond_0
    return-void
.end method

.method private is(Ljava/lang/reflect/Field;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "f",
            "description",
            "value"
        }
    .end annotation

    .line 2541
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Field \'%s.%s\' has \'%s\' annotation: not validating required fields%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2542
    :cond_0
    return p3
.end method

.method private isAnyHelpRequested()Z
    .locals 1

    .line 2531
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isHelpRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1700(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1800(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isOption(Ljava/lang/String;)Z
    .locals 5
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    .line 2484
    const-string v0, "--"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2485
    return v1

    .line 2488
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2489
    return v1

    .line 2491
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2492
    .local v0, "separatorIndex":I
    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 2493
    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2494
    return v1

    .line 2497
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->singleCharOption2Field:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "prefix",
            "field",
            "index"
        }
    .end annotation

    .line 2512
    invoke-static {}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help;->createMinimalParamLabelRenderer()Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;

    move-result-object v0

    .line 2513
    .local v0, "labelRenderer":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;
    const-string v1, ""

    .line 2514
    .local v1, "desc":Ljava/lang/String;
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, ")"

    const-string v4, " ("

    if-eqz v2, :cond_1

    .line 2515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "option \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->names()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2516
    if-ltz p3, :cond_2

    .line 2517
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    .line 2518
    .local v2, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v5, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->max:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 2519
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2521
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, p2, v4, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2522
    .end local v2    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    goto :goto_0

    .line 2523
    :cond_1
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2524
    invoke-static {p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    .line 2525
    .local v2, "indexRange":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    sget-object v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;->OFF:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, p2, v5, v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$IParamLabelRenderer;->renderParameterLabel(Ljava/lang/reflect/Field;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi;Ljava/util/List;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;

    move-result-object v5

    .line 2526
    .local v5, "label":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "positional parameter at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2528
    .end local v2    # "indexRange":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .end local v5    # "label":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Help$Ansi$Text;
    :cond_2
    :goto_0
    return-object v1
.end method

.method private parse(Ljava/util/List;Ljava/util/Stack;[Ljava/lang/String;)V
    .locals 11
    .param p3, "originalArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "parsedCommands",
            "argumentStack",
            "originalArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1975
    .local p1, "parsedCommands":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    .local p2, "argumentStack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isHelpRequested:Z

    .line 1976
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1702(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Z)Z

    .line 1977
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1802(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Z)Z

    .line 1979
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1980
    .local v1, "cmdClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->requiredFields:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Initializing %s: %d options, %d positional parameters, %d required, %d subcommands.%n"

    invoke-virtual {v2, v5, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1981
    :cond_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1982
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->requiredFields:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1983
    .local v2, "required":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1984
    .local v9, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    new-instance v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$PositionalParametersSorter;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$1;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1986
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, v2

    move-object v10, p3

    :try_start_0
    invoke-direct/range {v5 .. v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processArguments(Ljava/util/List;Ljava/util/Stack;Ljava/util/Collection;Ljava/util/Set;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    nop

    .line 1994
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isAnyHelpRequested()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1995
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 1996
    .local v5, "missing":Ljava/lang/reflect/Field;
    const-class v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1999
    invoke-static {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v6

    iget v6, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-direct {p0, v5, v6, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->assertNoMissingParameters(Ljava/lang/reflect/Field;ILjava/util/Stack;)V

    .line 2001
    .end local v5    # "missing":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 1997
    .restart local v5    # "missing":Ljava/lang/reflect/Field;
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;->access$2000(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    move-result-object v0

    throw v0

    .line 2003
    .end local v5    # "missing":Ljava/lang/reflect/Field;
    :cond_2
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2004
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->isUnmatchedArgumentsAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2005
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isWarn()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v0, "Unmatched arguments: %s%n"

    invoke-virtual {v4, v0, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2004
    :cond_3
    new-instance v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$UnmatchedArgumentException;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2100(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$UnmatchedArgumentException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/List;)V

    throw v0

    .line 2007
    :cond_4
    :goto_1
    return-void

    .line 1989
    :catch_0
    move-exception v0

    .line 1990
    .local v0, "ex":Ljava/lang/Exception;
    array-length v4, p3

    invoke-virtual {p2}, Ljava/util/Stack;->size()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    .line 1991
    .local v4, "offendingArgIndex":I
    if-ltz v4, :cond_5

    array-length v3, p3

    if-ge v4, v3, :cond_5

    aget-object v3, p3, v4

    goto :goto_2

    :cond_5
    const-string v3, "?"

    .line 1992
    .local v3, "arg":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v5, v0, v3, v4, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;->access$1900(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/Exception;Ljava/lang/String;I[Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    move-result-object v5

    throw v5

    .line 1987
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "arg":Ljava/lang/String;
    .end local v4    # "offendingArgIndex":I
    :catch_1
    move-exception v0

    .line 1988
    .local v0, "ex":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;
    throw v0
.end method

.method private processArguments(Ljava/util/List;Ljava/util/Stack;Ljava/util/Collection;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 16
    .param p5, "originalArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "parsedCommands",
            "args",
            "required",
            "initialized",
            "originalArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .local p1, "parsedCommands":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    .local p2, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p3, "required":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    .local p4, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 2023
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2024
    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2025
    .local v0, "arg":Ljava/lang/String;
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Stack;

    invoke-static {v10}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2200(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v10

    aput-object v10, v5, v3

    const-string v10, "Processing argument \'%s\'. Remainder=%s%n"

    invoke-virtual {v1, v10, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2029
    :cond_0
    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2030
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Found end-of-options delimiter \'--\'. Treating remainder as positional parameters.%n"

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2031
    invoke-direct {v6, v8, v9, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processRemainderAsPositionalParameters(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V

    .line 2032
    return-void

    .line 2036
    :cond_1
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2037
    iget-boolean v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isHelpRequested:Z

    if-nez v1, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 2038
    :cond_2
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-static {v1, v8, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;->access$2000(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$MissingParameterException;

    move-result-object v1

    throw v1

    .line 2040
    :cond_3
    :goto_1
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v4, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    move-result-object v4

    iget-object v4, v4, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->command:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Found subcommand \'%s\' (%s)%n"

    invoke-virtual {v1, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2041
    :cond_4
    iget-object v1, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->commands:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2300(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    move-result-object v1

    move-object/from16 v10, p1

    move-object/from16 v11, p5

    invoke-direct {v1, v10, v7, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->parse(Ljava/util/List;Ljava/util/Stack;[Ljava/lang/String;)V

    .line 2042
    return-void

    .line 2049
    :cond_5
    move-object/from16 v10, p1

    move-object/from16 v11, p5

    const/4 v1, 0x0

    .line 2050
    .local v1, "paramAttachedToOption":Z
    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 2051
    .local v12, "separatorIndex":I
    if-lez v12, :cond_8

    .line 2052
    invoke-virtual {v0, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2054
    .local v5, "key":Ljava/lang/String;
    iget-object v13, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v13, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 2055
    const/4 v1, 0x1

    .line 2056
    iget-object v13, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 2057
    .local v13, "optionParam":Ljava/lang/String;
    invoke-virtual {v7, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2058
    move-object v0, v5

    .line 2059
    iget-object v14, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v14

    invoke-virtual {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v14

    if-eqz v14, :cond_6

    iget-object v14, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v14

    new-array v15, v2, [Ljava/lang/Object;

    aput-object v5, v15, v4

    aput-object v13, v15, v3

    const-string v2, "Separated \'%s\' option from \'%s\' option parameter%n"

    invoke-virtual {v14, v2, v15}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2060
    .end local v13    # "optionParam":Ljava/lang/String;
    :cond_6
    goto :goto_2

    :cond_7
    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v0, v13, v4

    iget-object v14, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    aput-object v14, v13, v3

    const/4 v14, 0x2

    aput-object v5, v13, v14

    const-string v14, "\'%s\' contains separator \'%s\' but \'%s\' is not a known option%n"

    invoke-virtual {v2, v14, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2061
    .end local v5    # "key":Ljava/lang/String;
    :goto_2
    move-object v13, v0

    move v14, v1

    goto :goto_3

    :cond_8
    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    const/4 v5, 0x2

    new-array v13, v5, [Ljava/lang/Object;

    aput-object v0, v13, v4

    iget-object v5, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    aput-object v5, v13, v3

    const-string v5, "\'%s\' cannot be separated into <option>%s<option-parameter>%n"

    invoke-virtual {v2, v5, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2062
    :cond_9
    move-object v13, v0

    move v14, v1

    .end local v0    # "arg":Ljava/lang/String;
    .end local v1    # "paramAttachedToOption":Z
    .local v13, "arg":Ljava/lang/String;
    .local v14, "paramAttachedToOption":Z
    :goto_3
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2063
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object v3, v13

    move-object/from16 v4, p2

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processStandaloneOption(Ljava/util/Collection;Ljava/util/Set;Ljava/lang/String;Ljava/util/Stack;Z)V

    goto/16 :goto_4

    .line 2067
    :cond_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_c

    const-string v0, "-"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2068
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v13, v1, v4

    aput-object v7, v1, v3

    const-string v2, "Trying to process \'%s\' as clustered short options%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2069
    :cond_b
    invoke-direct {v6, v8, v9, v13, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processClusteredShortOptions(Ljava/util/Collection;Ljava/util/Set;Ljava/lang/String;Ljava/util/Stack;)V

    goto :goto_4

    .line 2074
    :cond_c
    invoke-virtual {v7, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2075
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v13, v1, v4

    const-string v2, "Could not find option \'%s\', deciding whether to treat as unmatched option or positional parameter...%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2076
    :cond_d
    invoke-direct {v6, v13}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->resemblesOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual/range {p2 .. p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->handleUnmatchedArguments(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2077
    :cond_e
    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v13, v1, v4

    const-string v2, "No option named \'%s\' found. Processing remainder as positional parameters%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2078
    :cond_f
    invoke-direct {v6, v8, v9, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processPositionalParameter(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V

    .line 2080
    .end local v12    # "separatorIndex":I
    .end local v13    # "arg":Ljava/lang/String;
    .end local v14    # "paramAttachedToOption":Z
    :goto_4
    goto/16 :goto_0

    .line 2081
    :cond_10
    move-object/from16 v10, p1

    move-object/from16 v11, p5

    return-void
.end method

.method private processClusteredShortOptions(Ljava/util/Collection;Ljava/util/Set;Ljava/lang/String;Ljava/util/Stack;)V
    .locals 20
    .param p3, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "required",
            "initialized",
            "arg",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2152
    .local p1, "required":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    .local p2, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .local p4, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 2153
    .local v15, "prefix":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2154
    .local v0, "cluster":Ljava/lang/String;
    const/4 v1, 0x1

    .line 2156
    .local v1, "paramAttachedToOption":Z
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lez v2, :cond_8

    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->singleCharOption2Field:Ljava/util/Map;

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2157
    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->singleCharOption2Field:Ljava/util/Map;

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/reflect/Field;

    .line 2158
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-static {v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    .line 2159
    .local v2, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "option "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2160
    .local v16, "argDescription":Ljava/lang/String;
    iget-object v4, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v15, v5, v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    aput-object v6, v5, v14

    aput-object v11, v5, v3

    const/4 v3, 0x3

    aput-object v7, v5, v3

    const/4 v3, 0x4

    aput-object v2, v5, v3

    const-string v3, "Found option \'%s%s\' in %s: field %s, arity=%s%n"

    invoke-virtual {v4, v3, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2161
    :cond_0
    invoke-interface {v9, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    move-object v0, v3

    .line 2163
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v4, v14

    goto :goto_2

    :cond_2
    move v4, v13

    .line 2164
    .end local v1    # "paramAttachedToOption":Z
    .local v4, "paramAttachedToOption":Z
    :goto_2
    iget-object v1, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2165
    iget-object v1, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->separator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2166
    iget v1, v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v2

    move-object v6, v0

    move-object v5, v2

    goto :goto_3

    .line 2164
    :cond_3
    move-object v6, v0

    move-object v5, v2

    .line 2168
    .end local v0    # "cluster":Ljava/lang/String;
    .end local v2    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .local v5, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .local v6, "cluster":Ljava/lang/String;
    :goto_3
    iget v0, v5, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    if-lez v0, :cond_4

    invoke-static {v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2169
    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v6, v1, v13

    const-string v2, "Trying to process \'%s\' as option parameter%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2174
    :cond_4
    invoke-static {v6}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2175
    invoke-virtual {v12, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    :cond_5
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v3, v5

    move-object/from16 v17, v5

    .end local v5    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .local v17, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    move-object/from16 v5, p4

    move-object/from16 v18, v6

    .end local v6    # "cluster":Ljava/lang/String;
    .local v18, "cluster":Ljava/lang/String;
    move-object/from16 v6, p2

    move-object/from16 v19, v7

    .end local v7    # "field":Ljava/lang/reflect/Field;
    .local v19, "field":Ljava/lang/reflect/Field;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyOption(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;ZLjava/util/Stack;Ljava/util/Set;Ljava/lang/String;)I

    move-result v0

    .line 2179
    .local v0, "consumed":I
    invoke-static/range {v18 .. v18}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2400(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    if-gtz v0, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 2182
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 2183
    .end local v16    # "argDescription":Ljava/lang/String;
    .end local v17    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .end local v18    # "cluster":Ljava/lang/String;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .local v0, "cluster":Ljava/lang/String;
    move v1, v4

    goto/16 :goto_0

    .line 2180
    .local v0, "consumed":I
    .restart local v16    # "argDescription":Ljava/lang/String;
    .restart local v17    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .restart local v18    # "cluster":Ljava/lang/String;
    .restart local v19    # "field":Ljava/lang/reflect/Field;
    :cond_7
    :goto_4
    return-void

    .line 2184
    .end local v4    # "paramAttachedToOption":Z
    .end local v16    # "argDescription":Ljava/lang/String;
    .end local v17    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .end local v18    # "cluster":Ljava/lang/String;
    .end local v19    # "field":Ljava/lang/reflect/Field;
    .local v0, "cluster":Ljava/lang/String;
    .restart local v1    # "paramAttachedToOption":Z
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 2185
    return-void

    .line 2189
    :cond_9
    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2190
    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_a
    move-object v2, v0

    :goto_5
    invoke-virtual {v12, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2191
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2192
    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    new-array v3, v14, [Ljava/lang/Object;

    aput-object v11, v3, v13

    const-string v4, "Could not match any short options in %s, deciding whether to treat as unmatched option or positional parameter...%n"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2193
    :cond_b
    invoke-direct {v8, v11}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->resemblesOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v8, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->handleUnmatchedArguments(Ljava/lang/String;)V

    return-void

    .line 2194
    :cond_c
    invoke-direct {v8, v9, v10, v12}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processPositionalParameter(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V

    .line 2195
    return-void

    .line 2198
    :cond_d
    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v13

    aput-object v11, v3, v14

    const-string v4, "No option found for %s in %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2199
    :cond_e
    invoke-virtual/range {p4 .. p4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v8, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->handleUnmatchedArguments(Ljava/lang/String;)V

    goto :goto_6

    .line 2201
    :cond_f
    invoke-virtual {v12, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2202
    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v13

    aput-object v11, v3, v14

    const-string v4, "%s is not an option parameter for %s%n"

    invoke-virtual {v2, v4, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2203
    :cond_10
    invoke-direct {v8, v9, v10, v12}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processPositionalParameter(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V

    .line 2205
    :goto_6
    return-void
.end method

.method private processPositionalParameter(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "required",
            "initialized",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2104
    .local p1, "required":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    .local p2, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v8, p0

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    iget v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    invoke-static {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$2200(Ljava/util/Stack;)Ljava/util/Stack;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "Processing next arg as a positional parameter at index=%d. Remainder=%s%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    :cond_0
    const/4 v0, 0x0

    .line 2106
    .local v0, "consumed":I
    iget-object v1, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->positionalParametersFields:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v0

    .end local v0    # "consumed":I
    .local v13, "consumed":I
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/reflect/Field;

    .line 2107
    .local v14, "positionalParam":Ljava/lang/reflect/Field;
    invoke-static {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterIndex(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v15

    .line 2108
    .local v15, "indexRange":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    invoke-virtual {v15, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2109
    goto :goto_0

    .line 2113
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Stack;

    .line 2114
    .local v7, "argsCopy":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-static {v14}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->parameterArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v6

    .line 2115
    .local v6, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v15, v1, v11

    aput-object v14, v1, v10

    const/4 v2, 0x3

    aput-object v6, v1, v2

    const-string v2, "Position %d is in index range %s. Trying to assign args to %s, arity=%s%n"

    invoke-virtual {v0, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2116
    :cond_2
    iget v0, v6, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-direct {v8, v14, v0, v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->assertNoMissingParameters(Ljava/lang/reflect/Field;ILjava/util/Stack;)V

    .line 2117
    invoke-virtual {v7}, Ljava/util/Stack;->size()I

    move-result v16

    .line 2118
    .local v16, "originalSize":I
    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "args["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v3, v6

    move-object v5, v7

    move-object/from16 v18, v6

    .end local v6    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .local v18, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    move-object/from16 v6, p2

    move-object/from16 v19, v7

    .end local v7    # "argsCopy":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local v19, "argsCopy":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyOption(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;ZLjava/util/Stack;Ljava/util/Set;Ljava/lang/String;)I

    .line 2119
    invoke-virtual/range {v19 .. v19}, Ljava/util/Stack;->size()I

    move-result v0

    sub-int v0, v16, v0

    .line 2120
    .local v0, "count":I
    if-lez v0, :cond_3

    move-object/from16 v1, p1

    invoke-interface {v1, v14}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v1, p1

    .line 2121
    :goto_1
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2122
    .end local v0    # "count":I
    .end local v14    # "positionalParam":Ljava/lang/reflect/Field;
    .end local v15    # "indexRange":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .end local v16    # "originalSize":I
    .end local v18    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .end local v19    # "argsCopy":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 2124
    :cond_4
    move-object/from16 v1, p1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v13, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2125
    .end local v0    # "i":I
    :cond_5
    iget v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    add-int/2addr v0, v13

    iput v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    .line 2126
    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v8, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    const-string v3, "Consumed %d arguments, moving position to index %d.%n"

    invoke-virtual {v0, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    :cond_6
    if-nez v13, :cond_7

    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2128
    invoke-virtual/range {p3 .. p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v8, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->handleUnmatchedArguments(Ljava/lang/String;)V

    .line 2130
    :cond_7
    return-void
.end method

.method private processRemainderAsPositionalParameters(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "required",
            "initialized",
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2099
    .local p1, "required":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    .local p2, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .local p3, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p3}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->processPositionalParameter(Ljava/util/Collection;Ljava/util/Set;Ljava/util/Stack;)V

    goto :goto_0

    .line 2102
    :cond_0
    return-void
.end method

.method private processStandaloneOption(Ljava/util/Collection;Ljava/util/Set;Ljava/lang/String;Ljava/util/Stack;Z)V
    .locals 10
    .param p3, "arg"    # Ljava/lang/String;
    .param p5, "paramAttachedToKey"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "required",
            "initialized",
            "arg",
            "args",
            "paramAttachedToKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2137
    .local p1, "required":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/reflect/Field;>;"
    .local p2, "initialized":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Field;>;"
    .local p4, "args":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 2138
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2139
    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->optionArity(Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    .line 2140
    .local v1, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    const/4 v2, 0x1

    if-eqz p5, :cond_0

    .line 2141
    iget v3, v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;->min(I)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;

    move-result-object v1

    move-object v9, v1

    goto :goto_0

    .line 2140
    :cond_0
    move-object v9, v1

    .line 2143
    .end local v1    # "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    .local v9, "arity":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    aput-object v0, v3, v2

    const/4 v2, 0x2

    aput-object v9, v3, v2

    const-string v2, "Found option named \'%s\': field %s, arity=%s%n"

    invoke-virtual {v1, v2, v3}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2144
    :cond_1
    const-class v3, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, v0

    move-object v4, v9

    move v5, p5

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->applyOption(Ljava/lang/reflect/Field;Ljava/lang/Class;Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Range;ZLjava/util/Stack;Ljava/util/Set;Ljava/lang/String;)I

    .line 2145
    return-void
.end method

.method private resemblesOption(Ljava/lang/String;)Z
    .locals 6
    .param p1, "arg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "arg"
        }
    .end annotation

    .line 2083
    const/4 v0, 0x0

    .line 2084
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2085
    .local v2, "optionName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 2086
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2085
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2088
    .end local v2    # "optionName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 2089
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    mul-int/lit8 v3, v0, 0xa

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x9

    if-lt v3, v4, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    .line 2090
    .local v3, "result":Z
    :goto_2
    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    if-eqz v3, :cond_3

    const-string v1, "resembles"

    goto :goto_3

    :cond_3
    const-string v1, "doesn\'t resemble"

    :goto_3
    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionName2Field:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const-string v1, "%s %s an option: %d matching prefix chars out of %d option names%n"

    invoke-virtual {v4, v1, v5}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2091
    :cond_4
    return v3
.end method

.method private split(Ljava/lang/String;Ljava/lang/reflect/Field;)[Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "field"
        }
    .end annotation

    .line 2473
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->splitRegex(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 2474
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private splitRegex(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 2468
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->split()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2469
    :cond_0
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Parameters;->split()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2470
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method private trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 2620
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tryConvert(Ljava/lang/reflect/Field;ILorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "index"    # I
    .param p4, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "field",
            "index",
            "converter",
            "value",
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2502
    .local p3, "converter":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;, "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<*>;"
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, " for "

    :try_start_0
    invoke-interface {p3, p4}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;->convert(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TypeConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2505
    :catch_0
    move-exception v1

    .line 2506
    .local v1, "other":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2507
    .local v0, "desc":Ljava/lang/String;
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not convert \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 2503
    .end local v0    # "desc":Ljava/lang/String;
    .end local v1    # "other":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2504
    .local v1, "ex":Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TypeConversionException;
    new-instance v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;

    iget-object v3, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$TypeConversionException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->optionDescription(Ljava/lang/String;Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ParameterException;-><init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Ljava/lang/String;)V

    throw v2
.end method

.method private unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 2624
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2626
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2627
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 2624
    :goto_0
    return-object v0
.end method

.method private updateHelpRequested(Ljava/lang/reflect/Field;)V
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "field"
        }
    .end annotation

    .line 2534
    const-class v0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2535
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isHelpRequested:Z

    const-class v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->help()Z

    move-result v1

    const-string v2, "help"

    invoke-direct {p0, p1, v2, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->is(Ljava/lang/reflect/Field;Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->isHelpRequested:Z

    .line 2536
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1700(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Z

    move-result v1

    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->versionHelp()Z

    move-result v2

    const-string v3, "versionHelp"

    invoke-direct {p0, p1, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->is(Ljava/lang/reflect/Field;Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1702(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Z)Z

    .line 2537
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1800(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Z

    move-result v1

    const-class v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;

    invoke-interface {v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Option;->usageHelp()Z

    move-result v2

    const-string v3, "usageHelp"

    invoke-direct {p0, p1, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->is(Ljava/lang/reflect/Field;Ljava/lang/String;Z)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1802(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;Z)Z

    .line 2539
    :cond_0
    return-void
.end method


# virtual methods
.method varargs parse([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "args"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;",
            ">;"
        }
    .end annotation

    .line 1962
    const-string v0, "argument array"

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1963
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->isInfo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->this$0:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;

    invoke-static {v0}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;->access$1600(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, "Parsing %d command line args %s%n"

    invoke-virtual {v0, v3, v2}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Tracer;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1964
    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1965
    .local v0, "arguments":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    array-length v2, p1

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1966
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1968
    .end local v2    # "i":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/tools/picocli/CommandLine;>;"
    invoke-direct {p0, v1, v0, p1}, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->parse(Ljava/util/List;Ljava/util/Stack;[Ljava/lang/String;)V

    .line 1970
    return-object v1
.end method
