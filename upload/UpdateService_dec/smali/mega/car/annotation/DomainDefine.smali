.class public interface abstract annotation Lmega/car/annotation/DomainDefine;
.super Ljava/lang/Object;
.source "DomainDefine.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lmega/car/annotation/DomainDefine;
        name = ""
        source = 0x2
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/annotation/DomainDefine$Source;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract domainId()I
.end method

.method public abstract name()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract permission()Ljava/lang/String;
.end method

.method public abstract source()I
.end method
