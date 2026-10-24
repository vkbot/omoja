.class public final synthetic Lorg/apache/poi/ddf/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:S


# direct methods
.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lorg/apache/poi/ddf/p;->a:S

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/ddf/p;->a:S

    check-cast p1, Lorg/apache/poi/ddf/EscherRecord;

    invoke-static {p0, p1}, Lorg/apache/poi/ddf/EscherContainerRecord;->a(SLorg/apache/poi/ddf/EscherRecord;)Z

    move-result p0

    return p0
.end method
