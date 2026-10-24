.class public final synthetic Lorg/apache/poi/xssf/usermodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;
.implements Lm5/z0$j;


# instance fields
.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/c;->c:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/xssf/usermodel/c;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lm5/z0;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/c;->c:Ljava/lang/Object;

    check-cast v0, Li5/c0;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/c;->r:Ljava/lang/Object;

    check-cast p0, Li5/z1;

    sget-object v1, Lm5/z0;->z:Le5/g;

    new-instance v1, Lm5/z0$l;

    invoke-direct {v1, v0, p0, p1}, Lm5/z0$l;-><init>(Li5/c0;Li5/z1;Lm5/z0;)V

    return-object v1
.end method

.method public final addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/usermodel/c;->c:Ljava/lang/Object;

    check-cast v0, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;

    iget-object p0, p0, Lorg/apache/poi/xssf/usermodel/c;->r:Ljava/lang/Object;

    check-cast p0, Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;->a(Lorg/apache/poi/xssf/usermodel/XSSFSignatureLine;Lorg/apache/poi/xssf/usermodel/XSSFSheet;[BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
