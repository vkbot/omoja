.class public final synthetic Lorg/apache/poi/util/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/m;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/m;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->e(Ljava/lang/Object;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
