.class public final synthetic Lorg/apache/poi/util/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/apache/poi/util/GenericRecordXmlWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordXmlWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/o;->a:Lorg/apache/poi/util/GenericRecordXmlWriter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/o;->a:Lorg/apache/poi/util/GenericRecordXmlWriter;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->writeProp(Ljava/util/Map$Entry;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
