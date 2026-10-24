.class public interface abstract annotation Landroidx/annotation/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/U;
        allOf = {}
        anyOf = {}
        conditional = false
        value = ""
    .end subannotation
.end annotation


# virtual methods
.method public abstract allOf()[Ljava/lang/String;
.end method

.method public abstract anyOf()[Ljava/lang/String;
.end method

.method public abstract conditional()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
