.class public final synthetic Lorg/apache/poi/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/apache/poi/util/GenericRecordXmlWriter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordXmlWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/util/r;->a:Lorg/apache/poi/util/GenericRecordXmlWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/util/r;->a:Lorg/apache/poi/util/GenericRecordXmlWriter;

    check-cast p1, Lorg/apache/poi/common/usermodel/GenericRecord;

    invoke-static {p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->b(Lorg/apache/poi/util/GenericRecordXmlWriter;Lorg/apache/poi/common/usermodel/GenericRecord;)V

    return-void
.end method
