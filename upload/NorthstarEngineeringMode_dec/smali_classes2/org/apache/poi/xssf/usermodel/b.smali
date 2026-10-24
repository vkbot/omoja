.class public final synthetic Lorg/apache/poi/xssf/usermodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/xssf/usermodel/b;->c:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    check-cast p2, Lorg/apache/poi/xssf/usermodel/XSSFComment;

    iget p0, p0, Lorg/apache/poi/xssf/usermodel/b;->c:I

    invoke-static {p0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFSheet;->b(ILorg/apache/poi/xssf/usermodel/XSSFComment;Lorg/apache/poi/xssf/usermodel/XSSFComment;)I

    move-result p0

    return p0
.end method
