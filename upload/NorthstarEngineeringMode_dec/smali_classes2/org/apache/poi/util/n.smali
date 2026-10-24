.class public final synthetic Lorg/apache/poi/util/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/apache/poi/util/GenericRecordXmlWriter;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/n;->a:Lorg/apache/poi/util/GenericRecordXmlWriter;

    iput-object p2, p0, Lorg/apache/poi/util/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/util/n;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/util/n;->c:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Lorg/apache/poi/util/n;->a:Lorg/apache/poi/util/GenericRecordXmlWriter;

    iget-object p0, p0, Lorg/apache/poi/util/n;->b:Ljava/lang/String;

    invoke-static {v1, p0, v0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->a(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map$Entry;)V

    return-void
.end method
