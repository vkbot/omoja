.class public Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;
.super Lorg/apache/poi/util/RecordFormatException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/model/InternalSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedBOFType"
.end annotation


# instance fields
.field private final type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "BOF not of a supported type, found "

    invoke-static {v0, p1}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/poi/util/RecordFormatException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->type:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hssf/model/InternalSheet$UnsupportedBOFType;->type:I

    return p0
.end method
