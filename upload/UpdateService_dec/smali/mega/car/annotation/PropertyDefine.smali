.class public interface abstract annotation Lmega/car/annotation/PropertyDefine;
.super Ljava/lang/Object;
.source "PropertyDefine.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lmega/car/annotation/PropertyDefine;
        changeMode = 0x1
        permission = ""
        publish = ""
        serializable = true
        source = -0x1
        subscribe = ""
        topic = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/annotation/PropertyDefine$JsonString;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract changeMode()I
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract publish()Ljava/lang/String;
.end method

.method public abstract serializable()Z
.end method

.method public abstract source()I
.end method

.method public abstract subscribe()Ljava/lang/String;
.end method

.method public abstract topic()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
