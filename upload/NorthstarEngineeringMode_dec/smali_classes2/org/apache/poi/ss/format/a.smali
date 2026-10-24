.class public final synthetic Lorg/apache/poi/ss/format/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/format/CellFormatPart$PartHandler;


# instance fields
.field public final synthetic a:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/ss/format/a;->a:[I

    return-void
.end method


# virtual methods
.method public final handlePart(Ljava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/ss/format/a;->a:[I

    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/poi/ss/format/CellTextFormatter;->a([ILjava/util/regex/Matcher;Ljava/lang/String;Lorg/apache/poi/ss/format/CellFormatType;Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
