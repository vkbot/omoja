.class public abstract Lorg/apache/poi/xslf/model/PropertyFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet:Z

    return-void
.end method


# virtual methods
.method public abstract fetch(Lorg/apache/poi/xslf/usermodel/XSLFShape;)Z
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xslf/model/PropertyFetcher;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public isSet()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet:Z

    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/xslf/model/PropertyFetcher;->_value:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/poi/xslf/model/PropertyFetcher;->isSet:Z

    return-void
.end method
