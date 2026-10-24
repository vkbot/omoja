.class Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter$1;
.super Ljava/lang/Object;
.source "CommandLine.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;->getTypeConverter(Ljava/lang/Class;Ljava/lang/reflect/Field;)Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$ITypeConverter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

.field final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$type"
        }
    .end annotation

    .line 2571
    iput-object p1, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter$1;->this$1:Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter;

    iput-object p2, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Lorg/apache/logging/log4j/core/tools/picocli/CommandLine$Interpreter$1;->val$type:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    return-object v0
.end method
