.class Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;
.super Ljava/lang/Object;
.source "GelfLayout.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/TriConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/layout/GelfLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/util/TriConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private final checker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

.field private final prefix:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/logging/log4j/core/layout/GelfLayout;


# direct methods
.method constructor <init>(Lorg/apache/logging/log4j/core/layout/GelfLayout;Lorg/apache/logging/log4j/core/layout/internal/ListChecker;Ljava/lang/String;)V
    .locals 0
    .param p2, "checker"    # Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "checker",
            "prefix"
        }
    .end annotation

    .line 677
    iput-object p1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->this$0:Lorg/apache/logging/log4j/core/layout/GelfLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->checker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    .line 679
    iput-object p3, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->prefix:Ljava/lang/String;

    .line 680
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "key",
            "value",
            "stringBuilder"
        }
    .end annotation

    .line 673
    check-cast p1, Ljava/lang/String;

    check-cast p3, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->accept(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "value",
            "stringBuilder"
        }
    .end annotation

    .line 684
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "stringValue":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->checker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/core/layout/internal/ListChecker;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->this$0:Lorg/apache/logging/log4j/core/layout/GelfLayout;

    invoke-static {v1}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->access$200(Lorg/apache/logging/log4j/core/layout/GelfLayout;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 686
    :cond_0
    const-string v1, "\"_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    iget-object v1, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->prefix:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/apache/logging/log4j/util/Strings;->concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 688
    const-string v1, "\":\""

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-static {v0}, Lorg/apache/logging/log4j/core/layout/GelfLayout;->access$300(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p3}, Lorg/apache/logging/log4j/core/util/JsonUtils;->quoteAsString(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    .line 690
    const-string v1, "\","

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_1
    return-void
.end method

.method public getChecker()Lorg/apache/logging/log4j/core/layout/internal/ListChecker;
    .locals 1

    .line 695
    iget-object v0, p0, Lorg/apache/logging/log4j/core/layout/GelfLayout$FieldWriter;->checker:Lorg/apache/logging/log4j/core/layout/internal/ListChecker;

    return-object v0
.end method
