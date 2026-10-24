.class public final Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;
.super Ljava/lang/Object;
.source "JAnsiTextRenderer.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/pattern/TextRenderer;


# static fields
.field public static final DefaultExceptionStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;"
        }
    .end annotation
.end field

.field static final DefaultMessageStyleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;"
        }
    .end annotation
.end field

.field private static final PrefedinedStyleMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final beginToken:Ljava/lang/String;

.field private final beginTokenLen:I

.field private final endToken:Ljava/lang/String;

.field private final endTokenLen:I

.field private final styleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "tempPreDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Prefix"

    invoke-static {v1, v4, v3}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 98
    const/4 v3, 0x2

    new-array v6, v3, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v7, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v7, v6, v5

    sget-object v7, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v7, v6, v2

    const-string v7, "Name"

    invoke-static {v1, v7, v6}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 99
    new-array v6, v3, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v8, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v8, v6, v5

    sget-object v8, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v8, v6, v2

    const-string v8, "NameMessageSeparator"

    invoke-static {v1, v8, v6}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 100
    const/4 v6, 0x3

    new-array v9, v6, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v10, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v10, v9, v5

    sget-object v10, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v10, v9, v2

    sget-object v10, Lorg/fusesource/jansi/AnsiRenderer$Code;->BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v10, v9, v3

    const-string v10, "Message"

    invoke-static {v1, v10, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 101
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v11, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v11, v9, v5

    const-string v11, "At"

    invoke-static {v1, v11, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 102
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v12, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v12, v9, v5

    const-string v12, "CauseLabel"

    invoke-static {v1, v12, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 103
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v13, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v13, v9, v5

    const-string v13, "Text"

    invoke-static {v1, v13, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 104
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v14, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v14, v9, v5

    const-string v14, "More"

    invoke-static {v1, v14, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 105
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v15, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v15, v9, v5

    const-string v15, "Suppressed"

    invoke-static {v1, v15, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 107
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v16, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v16, v9, v5

    const-string v3, "StackTraceElement.ClassName"

    invoke-static {v1, v3, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 108
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v17, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v17, v9, v5

    const-string v6, "StackTraceElement.ClassMethodSeparator"

    invoke-static {v1, v6, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 109
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v18, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v18, v9, v5

    const-string v5, "StackTraceElement.MethodName"

    invoke-static {v1, v5, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 110
    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v18, 0x0

    aput-object v19, v9, v18

    const-string v2, "StackTraceElement.NativeMethod"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 111
    move-object/from16 v20, v2

    const/4 v9, 0x1

    new-array v2, v9, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v2, v18

    const-string v9, "StackTraceElement.FileName"

    invoke-static {v1, v9, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 112
    move-object/from16 v21, v9

    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v9, v18

    const-string v2, "StackTraceElement.LineNumber"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 113
    move-object/from16 v22, v2

    const/4 v9, 0x1

    new-array v2, v9, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v2, v18

    const-string v9, "StackTraceElement.Container"

    invoke-static {v1, v9, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 114
    move-object/from16 v23, v9

    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v9, v18

    const-string v2, "StackTraceElement.ContainerSeparator"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 115
    move-object/from16 v24, v2

    const/4 v9, 0x1

    new-array v2, v9, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v2, v18

    const-string v9, "StackTraceElement.UnknownSource"

    invoke-static {v1, v9, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 117
    move-object/from16 v25, v9

    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v9, v18

    const-string v2, "ExtraClassInfo.Inexact"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 118
    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v9, v18

    const-string v2, "ExtraClassInfo.Container"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 119
    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v9, v18

    const-string v2, "ExtraClassInfo.ContainerSeparator"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 120
    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v19, v9, v18

    const-string v2, "ExtraClassInfo.Location"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 121
    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v2, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v2, v9, v18

    const-string v2, "ExtraClassInfo.Version"

    invoke-static {v1, v2, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 123
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->DefaultExceptionStyleMap:Ljava/util/Map;

    .line 124
    const-string v9, "Spock"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 130
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    const/4 v2, 0x1

    new-array v9, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v19, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/16 v18, 0x0

    aput-object v19, v9, v18

    invoke-static {v1, v4, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 131
    const/4 v4, 0x3

    new-array v9, v4, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v9, v18

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v9, v2

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v2, 0x2

    aput-object v4, v9, v2

    invoke-static {v1, v7, v9}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 132
    new-array v4, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v2, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v2, v4, v18

    sget-object v2, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v7, 0x1

    aput-object v2, v4, v7

    invoke-static {v1, v8, v4}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 133
    const/4 v2, 0x3

    new-array v2, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v18

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v7

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BOLD:Lorg/fusesource/jansi/AnsiRenderer$Code;

    const/4 v8, 0x2

    aput-object v4, v2, v8

    invoke-static {v1, v10, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 134
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v18

    invoke-static {v1, v11, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 135
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v18

    invoke-static {v1, v12, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 136
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v18

    invoke-static {v1, v13, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 137
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v18

    invoke-static {v1, v14, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 138
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v2, v18

    invoke-static {v1, v15, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 140
    const/4 v2, 0x2

    new-array v4, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v8, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v8, v4, v18

    sget-object v8, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v8, v4, v7

    invoke-static {v1, v3, v4}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 141
    new-array v3, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v3, v18

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v3, v7

    invoke-static {v1, v6, v3}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 142
    new-array v3, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v3, v18

    sget-object v4, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v4, v3, v7

    invoke-static {v1, v5, v3}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 143
    new-array v2, v2, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->BG_RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v7

    move-object/from16 v3, v20

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 144
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    move-object/from16 v3, v21

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 145
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    move-object/from16 v3, v22

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 146
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    move-object/from16 v3, v23

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 147
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    move-object/from16 v3, v24

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 148
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->RED:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    move-object/from16 v3, v25

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 150
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    const-string v3, "ExtraClassInfo.Inexact"

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 151
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    const-string v3, "ExtraClassInfo.Container"

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 152
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->WHITE:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    const-string v3, "ExtraClassInfo.ContainerSeparator"

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 153
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    const-string v3, "ExtraClassInfo.Location"

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 154
    new-array v2, v7, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    sget-object v3, Lorg/fusesource/jansi/AnsiRenderer$Code;->YELLOW:Lorg/fusesource/jansi/AnsiRenderer$Code;

    aput-object v3, v2, v18

    const-string v3, "ExtraClassInfo.Version"

    invoke-static {v1, v3, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 156
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "Kirk"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 161
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->DefaultMessageStyleMap:Ljava/util/Map;

    .line 163
    .end local v1    # "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->PrefedinedStyleMaps:Ljava/util/Map;

    .line 164
    .end local v0    # "tempPreDefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;>;"
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/util/Map;)V
    .locals 20
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formats",
            "defaultStyleMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p2, "defaultStyleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v2, "@|"

    .line 174
    .local v2, "tempBeginToken":Ljava/lang/String;
    const-string v3, "|@"

    .line 176
    .local v3, "tempEndToken":Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_c

    .line 177
    aget-object v4, v1, v5

    .line 179
    .local v4, "allStylesStr":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "allStyleAssignmentsArr":[Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    array-length v8, v6

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 181
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    move-object/from16 v8, p2

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 182
    array-length v9, v6

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_b

    aget-object v12, v6, v11

    .line 183
    .local v12, "styleAssignmentStr":Ljava/lang/String;
    const-string v13, "="

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 184
    .local v13, "styleAssignmentArr":[Ljava/lang/String;
    array-length v14, v13

    const-string v15, "{} parsing style \"{}\", expected format: StyleName=Code(,Code)*"

    const/4 v5, 0x2

    if-eq v14, v5, :cond_0

    .line 185
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v5

    .line 186
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 185
    invoke-virtual {v5, v15, v14, v12}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    goto/16 :goto_3

    .line 188
    :cond_0
    aget-object v14, v13, v10

    .line 189
    .local v14, "styleName":Ljava/lang/String;
    const/16 v16, 0x1

    aget-object v10, v13, v16

    .line 190
    .local v10, "codeListStr":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "codeNames":[Ljava/lang/String;
    array-length v1, v5

    if-nez v1, :cond_1

    .line 192
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v1

    .line 194
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "tempBeginToken":Ljava/lang/String;
    .local v18, "tempBeginToken":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v1, v15, v2, v12}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v19, v3

    goto/16 :goto_3

    .line 196
    .end local v18    # "tempBeginToken":Ljava/lang/String;
    .restart local v2    # "tempBeginToken":Ljava/lang/String;
    :cond_1
    move-object/from16 v18, v2

    .end local v2    # "tempBeginToken":Ljava/lang/String;
    .restart local v18    # "tempBeginToken":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v15, -0x754544ca

    if-eq v2, v15, :cond_5

    const v15, -0x4780d110

    if-eq v2, v15, :cond_4

    const v15, 0x6a16f5fe

    if-eq v2, v15, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    const-string v2, "EndToken"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v2, "BeginToken"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string v2, "StyleMapName"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    :goto_1
    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v15, 0x2

    if-eq v1, v15, :cond_7

    .line 214
    array-length v1, v5

    new-array v1, v1, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 215
    .local v1, "codes":[Lorg/fusesource/jansi/AnsiRenderer$Code;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    array-length v2, v1

    if-ge v15, v2, :cond_6

    .line 216
    aget-object v2, v5, v15

    invoke-direct {v0, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->toCode(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiRenderer$Code;

    move-result-object v2

    aput-object v2, v1, v15

    .line 215
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 218
    .end local v15    # "i":I
    :cond_6
    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v3

    goto :goto_3

    .line 204
    .end local v1    # "codes":[Lorg/fusesource/jansi/AnsiRenderer$Code;
    :cond_7
    const/4 v1, 0x0

    aget-object v2, v5, v1

    .line 205
    .local v2, "predefinedMapName":Ljava/lang/String;
    sget-object v1, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->PrefedinedStyleMaps:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 206
    .local v1, "predefinedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    if-eqz v1, :cond_8

    .line 207
    invoke-interface {v7, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object/from16 v19, v3

    goto :goto_3

    .line 209
    :cond_8
    invoke-static {}, Lorg/apache/logging/log4j/status/StatusLogger;->getLogger()Lorg/apache/logging/log4j/status/StatusLogger;

    move-result-object v15

    move-object/from16 v17, v1

    .end local v1    # "predefinedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    .local v17, "predefinedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    const/4 v1, 0x0

    move-object/from16 v19, v3

    .end local v3    # "tempEndToken":Ljava/lang/String;
    .local v19, "tempEndToken":Ljava/lang/String;
    const-string v3, "Unknown predefined map name {}, pick one of {}"

    invoke-virtual {v15, v3, v2, v1}, Lorg/apache/logging/log4j/status/StatusLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 212
    nop

    .line 182
    .end local v5    # "codeNames":[Ljava/lang/String;
    .end local v10    # "codeListStr":Ljava/lang/String;
    .end local v12    # "styleAssignmentStr":Ljava/lang/String;
    .end local v13    # "styleAssignmentArr":[Ljava/lang/String;
    .end local v14    # "styleName":Ljava/lang/String;
    .end local v17    # "predefinedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    .end local v18    # "tempBeginToken":Ljava/lang/String;
    .end local v19    # "tempEndToken":Ljava/lang/String;
    .local v2, "tempBeginToken":Ljava/lang/String;
    .restart local v3    # "tempEndToken":Ljava/lang/String;
    :goto_3
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    const/4 v1, 0x0

    .end local v2    # "tempBeginToken":Ljava/lang/String;
    .end local v3    # "tempEndToken":Ljava/lang/String;
    .restart local v18    # "tempBeginToken":Ljava/lang/String;
    .restart local v19    # "tempEndToken":Ljava/lang/String;
    goto :goto_4

    .line 201
    .end local v19    # "tempEndToken":Ljava/lang/String;
    .restart local v3    # "tempEndToken":Ljava/lang/String;
    .restart local v5    # "codeNames":[Ljava/lang/String;
    .restart local v10    # "codeListStr":Ljava/lang/String;
    .restart local v12    # "styleAssignmentStr":Ljava/lang/String;
    .restart local v13    # "styleAssignmentArr":[Ljava/lang/String;
    .restart local v14    # "styleName":Ljava/lang/String;
    :cond_9
    move-object/from16 v19, v3

    .end local v3    # "tempEndToken":Ljava/lang/String;
    .restart local v19    # "tempEndToken":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v3, v5, v1

    .line 202
    .end local v19    # "tempEndToken":Ljava/lang/String;
    .restart local v3    # "tempEndToken":Ljava/lang/String;
    move-object/from16 v2, v18

    goto :goto_4

    .line 198
    :cond_a
    move-object/from16 v19, v3

    const/4 v1, 0x0

    .end local v3    # "tempEndToken":Ljava/lang/String;
    .restart local v19    # "tempEndToken":Ljava/lang/String;
    aget-object v2, v5, v1

    .line 199
    .end local v18    # "tempBeginToken":Ljava/lang/String;
    .restart local v2    # "tempBeginToken":Ljava/lang/String;
    nop

    .line 182
    .end local v5    # "codeNames":[Ljava/lang/String;
    .end local v10    # "codeListStr":Ljava/lang/String;
    .end local v12    # "styleAssignmentStr":Ljava/lang/String;
    .end local v13    # "styleAssignmentArr":[Ljava/lang/String;
    .end local v14    # "styleName":Ljava/lang/String;
    .end local v19    # "tempEndToken":Ljava/lang/String;
    .restart local v3    # "tempEndToken":Ljava/lang/String;
    :goto_4
    add-int/lit8 v11, v11, 0x1

    move v10, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .line 223
    .end local v2    # "tempBeginToken":Ljava/lang/String;
    .end local v3    # "tempEndToken":Ljava/lang/String;
    .end local v4    # "allStylesStr":Ljava/lang/String;
    .end local v6    # "allStyleAssignmentsArr":[Ljava/lang/String;
    .restart local v18    # "tempBeginToken":Ljava/lang/String;
    .restart local v19    # "tempEndToken":Ljava/lang/String;
    goto :goto_5

    .line 224
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    .end local v18    # "tempBeginToken":Ljava/lang/String;
    .end local v19    # "tempEndToken":Ljava/lang/String;
    .restart local v2    # "tempBeginToken":Ljava/lang/String;
    .restart local v3    # "tempEndToken":Ljava/lang/String;
    :cond_c
    move-object/from16 v8, p2

    move-object/from16 v7, p2

    .line 226
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    :goto_5
    iput-object v7, v0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->styleMap:Ljava/util/Map;

    .line 227
    iput-object v2, v0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->beginToken:Ljava/lang/String;

    .line 228
    iput-object v3, v0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->endToken:Ljava/lang/String;

    .line 229
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->beginTokenLen:I

    .line 230
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->endTokenLen:I

    .line 231
    return-void
.end method

.method private static varargs put(Ljava/util/Map;Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "codes"    # [Lorg/fusesource/jansi/AnsiRenderer$Code;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "map",
            "name",
            "codes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ")V"
        }
    .end annotation

    .line 88
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Lorg/fusesource/jansi/AnsiRenderer$Code;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method private varargs render(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "text",
            "names"
        }
    .end annotation

    .line 265
    invoke-static {}, Lorg/fusesource/jansi/Ansi;->ansi()Lorg/fusesource/jansi/Ansi;

    move-result-object v0

    .line 266
    .local v0, "ansi":Lorg/fusesource/jansi/Ansi;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 267
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->styleMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/fusesource/jansi/AnsiRenderer$Code;

    .line 268
    .local v4, "codes":[Lorg/fusesource/jansi/AnsiRenderer$Code;
    if-eqz v4, :cond_0

    .line 269
    invoke-direct {p0, v0, v4}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->render(Lorg/fusesource/jansi/Ansi;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    goto :goto_1

    .line 271
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->toCode(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiRenderer$Code;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->render(Lorg/fusesource/jansi/Ansi;Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 266
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "codes":[Lorg/fusesource/jansi/AnsiRenderer$Code;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {v0, p1}, Lorg/fusesource/jansi/Ansi;->a(Ljava/lang/String;)Lorg/fusesource/jansi/Ansi;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->reset()Lorg/fusesource/jansi/Ansi;

    move-result-object v1

    invoke-virtual {v1}, Lorg/fusesource/jansi/Ansi;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private render(Lorg/fusesource/jansi/Ansi;Lorg/fusesource/jansi/AnsiRenderer$Code;)V
    .locals 1
    .param p1, "ansi"    # Lorg/fusesource/jansi/Ansi;
    .param p2, "code"    # Lorg/fusesource/jansi/AnsiRenderer$Code;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ansi",
            "code"
        }
    .end annotation

    .line 238
    invoke-virtual {p2}, Lorg/fusesource/jansi/AnsiRenderer$Code;->isColor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p2}, Lorg/fusesource/jansi/AnsiRenderer$Code;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p2}, Lorg/fusesource/jansi/AnsiRenderer$Code;->getColor()Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fusesource/jansi/Ansi;->bg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p2}, Lorg/fusesource/jansi/AnsiRenderer$Code;->getColor()Lorg/fusesource/jansi/Ansi$Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fusesource/jansi/Ansi;->fg(Lorg/fusesource/jansi/Ansi$Color;)Lorg/fusesource/jansi/Ansi;

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p2}, Lorg/fusesource/jansi/AnsiRenderer$Code;->isAttribute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p2}, Lorg/fusesource/jansi/AnsiRenderer$Code;->getAttribute()Lorg/fusesource/jansi/Ansi$Attribute;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/fusesource/jansi/Ansi;->a(Lorg/fusesource/jansi/Ansi$Attribute;)Lorg/fusesource/jansi/Ansi;

    .line 247
    :cond_2
    :goto_0
    return-void
.end method

.method private varargs render(Lorg/fusesource/jansi/Ansi;[Lorg/fusesource/jansi/AnsiRenderer$Code;)V
    .locals 3
    .param p1, "ansi"    # Lorg/fusesource/jansi/Ansi;
    .param p2, "codes"    # [Lorg/fusesource/jansi/AnsiRenderer$Code;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ansi",
            "codes"
        }
    .end annotation

    .line 250
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 251
    .local v2, "code":Lorg/fusesource/jansi/AnsiRenderer$Code;
    invoke-direct {p0, p1, v2}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->render(Lorg/fusesource/jansi/Ansi;Lorg/fusesource/jansi/AnsiRenderer$Code;)V

    .line 250
    .end local v2    # "code":Lorg/fusesource/jansi/AnsiRenderer$Code;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method

.method private toCode(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiRenderer$Code;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 323
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/fusesource/jansi/AnsiRenderer$Code;->valueOf(Ljava/lang/String;)Lorg/fusesource/jansi/AnsiRenderer$Code;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getStyleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/fusesource/jansi/AnsiRenderer$Code;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->styleMap:Ljava/util/Map;

    return-object v0
.end method

.method public render(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .param p3, "styleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "input",
            "output",
            "styleName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->render(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    return-void
.end method

.method public render(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p1, "input"    # Ljava/lang/StringBuilder;
    .param p2, "output"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 290
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->beginToken:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 291
    .local v1, "j":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 292
    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 294
    return-void

    .line 296
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    return-void

    .line 299
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v3, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->endToken:Ljava/lang/String;

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 302
    .local v3, "k":I
    if-ne v3, v2, :cond_2

    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 304
    return-void

    .line 306
    :cond_2
    iget v2, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->beginTokenLen:I

    add-int/2addr v1, v2

    .line 307
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "spec":Ljava/lang/String;
    const/4 v4, 0x2

    const-string v5, " "

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "items":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 311
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 312
    return-void

    .line 314
    :cond_3
    aget-object v5, v4, v6

    const/4 v6, 0x0

    aget-object v6, v4, v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->render(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 316
    .local v5, "replacement":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget v6, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->endTokenLen:I

    add-int v0, v3, v6

    .line 319
    .end local v2    # "spec":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/String;
    .end local v5    # "replacement":Ljava/lang/String;
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JAnsiMessageRenderer [beginToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->beginToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", beginTokenLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->beginTokenLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->endToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTokenLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->endTokenLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", styleMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/pattern/JAnsiTextRenderer;->styleMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
