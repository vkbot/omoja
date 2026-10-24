.class public interface abstract Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher$ParaPropFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xslf/model/ParagraphPropertyFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ParaPropFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract fetch(Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTextParagraphProperties;",
            "Ljava/util/function/Consumer<",
            "TS;>;)V"
        }
    .end annotation
.end method
