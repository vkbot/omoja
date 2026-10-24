.class public interface abstract annotation Landroidx/annotation/A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroidx/annotation/A;
        attributeId = 0x0
        enumMapping = {}
        flagMapping = {}
        hasAttributeId = true
        name = ""
        valueType = .enum Landroidx/annotation/InspectableProperty$ValueType;->b:Landroidx/annotation/InspectableProperty$ValueType;
    .end subannotation
.end annotation


# virtual methods
.method public abstract attributeId()I
.end method

.method public abstract enumMapping()[Landroidx/annotation/y;
.end method

.method public abstract flagMapping()[Landroidx/annotation/z;
.end method

.method public abstract hasAttributeId()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract valueType()Landroidx/annotation/InspectableProperty$ValueType;
.end method
