.class public final Lj5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj5/b;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj5/b;->b:Ljava/util/HashMap;

    const/4 v0, 0x0

    const-string v1, "ASCII"

    const-string v2, "ANSI_X3.4-1986"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP367"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSASCII"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-367"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM367"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-6"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO646-US"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_646.IRV:1991"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "US"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "US-ASCII"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "BIG5"

    const-string v1, "BIG5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "BIG5"

    const-string v1, "CSBIG5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP037"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM037"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-CA"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-NL"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-US"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-WT"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-37"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM037"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP1026"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM1026"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-1026"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM1026"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1047"

    const-string v1, "CP1047"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1047"

    const-string v1, "IBM-1047"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1047"

    const-string v1, "IBM1047"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1140"

    const-string v1, "CCSID01140"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1140"

    const-string v1, "CP01140"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1140"

    const-string v1, "IBM-1140"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1140"

    const-string v1, "IBM01140"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1141"

    const-string v1, "CCSID01141"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1141"

    const-string v1, "CP01141"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1141"

    const-string v1, "IBM-1141"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1141"

    const-string v1, "IBM01141"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1142"

    const-string v1, "CCSID01142"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1142"

    const-string v1, "CP01142"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1142"

    const-string v1, "IBM-1142"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1142"

    const-string v1, "IBM01142"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1143"

    const-string v1, "CCSID01143"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1143"

    const-string v1, "CP01143"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1143"

    const-string v1, "IBM-1143"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1143"

    const-string v1, "IBM01143"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1144"

    const-string v1, "CCSID01144"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1144"

    const-string v1, "CP01144"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1144"

    const-string v1, "IBM-1144"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1144"

    const-string v1, "IBM01144"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1145"

    const-string v1, "CCSID01145"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1145"

    const-string v1, "CP01145"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1145"

    const-string v1, "IBM-1145"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1145"

    const-string v1, "IBM01145"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1146"

    const-string v1, "CCSID01146"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1146"

    const-string v1, "CP01146"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1146"

    const-string v1, "IBM-1146"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1146"

    const-string v1, "IBM01146"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1147"

    const-string v1, "CCSID01147"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1147"

    const-string v1, "CP01147"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1147"

    const-string v1, "IBM-1147"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1147"

    const-string v1, "IBM01147"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1148"

    const-string v1, "CCSID01148"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1148"

    const-string v1, "CP01148"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1148"

    const-string v1, "IBM-1148"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1148"

    const-string v1, "IBM01148"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1149"

    const-string v1, "CCSID01149"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1149"

    const-string v1, "CP01149"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1149"

    const-string v1, "IBM-1149"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1149"

    const-string v1, "IBM01149"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1250"

    const-string v1, "WINDOWS-1250"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1251"

    const-string v1, "WINDOWS-1251"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1252"

    const-string v1, "WINDOWS-1252"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1253"

    const-string v1, "WINDOWS-1253"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1254"

    const-string v1, "WINDOWS-1254"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1255"

    const-string v1, "WINDOWS-1255"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1256"

    const-string v1, "WINDOWS-1256"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1257"

    const-string v1, "WINDOWS-1257"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP1258"

    const-string v1, "WINDOWS-1258"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP273"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM273"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-273"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM273"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP277"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM277"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-DK"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-NO"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-277"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM277"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP278"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM278"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-FI"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-SE"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-278"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM278"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP280"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM280"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-IT"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-280"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM280"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP284"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM284"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-ES"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-284"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM284"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP285"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM285"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-GB"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-285"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM285"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP290"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM290"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-JP-KANA"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-290"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM290"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP297"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM297"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-FR"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-297"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM297"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP420"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM420"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-AR1"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-420"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM420"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP424"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM424"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-HE"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-424"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM424"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP437"

    const-string v2, "437"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSPC8CODEPAGE437"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-437"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM437"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP500"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM500"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-BE"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-CH"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-500"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM500"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP775"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSPC775BALTIC"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-775"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM775"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP850"

    const-string v2, "850"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSPC850MULTILINGUAL"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-850"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM850"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP852"

    const-string v2, "852"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSPCP852"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-852"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM852"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "855"

    const/4 v1, 0x0

    const-string v2, "CP855"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM855"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-855"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM855"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "857"

    const/4 v1, 0x0

    const-string v2, "CP857"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM857"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-857"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM857"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP858"

    const-string v1, "CCSID00858"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP858"

    const-string v1, "CP00858"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP858"

    const-string v1, "IBM-858"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP858"

    const-string v1, "IBM00858"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "860"

    const/4 v1, 0x0

    const-string v2, "CP860"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM860"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-860"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM860"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP861"

    const-string v2, "861"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP-IS"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM861"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-861"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM861"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "862"

    const/4 v1, 0x0

    const-string v2, "CP862"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSPC862LATINHEBREW"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-862"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM862"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "863"

    const/4 v1, 0x0

    const-string v2, "CP863"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM863"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-863"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM863"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP864"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM864"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-864"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM864"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "865"

    const/4 v1, 0x0

    const-string v2, "CP865"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM865"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-865"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM865"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "866"

    const/4 v1, 0x0

    const-string v2, "CP866"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM866"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-866"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM866"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP-AR"

    const/4 v1, 0x0

    const-string v2, "CP868"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM868"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-868"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM868"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP-GR"

    const/4 v1, 0x0

    const-string v2, "CP869"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM869"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-869"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM869"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP870"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM870"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-ROECE"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-YU"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-870"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM870"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP871"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM871"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-IS"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-871"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM871"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "CP918"

    invoke-static {v1, v1, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSIBM918"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-CP-AR2"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-918"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM918"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CCSID00924"

    const/4 v1, 0x0

    const-string v2, "CP924"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CP00924"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EBCDIC-LATIN9--EURO"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-924"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM00924"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "GBK"

    const-string v2, "CP936"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "MS936"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "WINDOWS-936"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EUCJIS"

    const-string v1, "CSEUCPKDFMTJAPANESE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EUCJIS"

    const-string v1, "EUC-JP"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "EUCJIS"

    const-string v1, "EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "GB18030"

    const-string v1, "GB18030"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "GB2312"

    const-string v1, "CSGB2312"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "GB2312"

    const-string v1, "GB2312"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO2022CN"

    const-string v1, "ISO-2022-CN"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO2022KR"

    const-string v1, "CSISO2022KR"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO2022KR"

    const-string v1, "ISO-2022-KR"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_1"

    const-string v2, "CP819"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATIN1"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM-819"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "IBM819"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-1"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-100"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-1"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "L1"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "LATIN1"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATIN2"

    const/4 v1, 0x0

    const-string v2, "ISO8859_2"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-2"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-101"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-2"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "L2"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "LATIN2"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATIN3"

    const-string v2, "ISO8859_3"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-3"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-109"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-3"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "L3"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "LATIN3"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATIN4"

    const-string v2, "ISO8859_4"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-4"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-110"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-4"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "L4"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "LATIN4"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO8859_5"

    const-string v1, "CSISOLATINCYRILLIC"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO8859_5"

    const-string v1, "CYRILLIC"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO8859_5"

    const-string v1, "ISO-8859-5"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO8859_5"

    const-string v1, "ISO-IR-144"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO8859_5"

    const-string v1, "ISO_8859-5"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_6"

    const-string v2, "ARABIC"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ASMO-708"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATINARABIC"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ECMA-114"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-6"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-127"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-6"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const-string v1, "ISO8859_7"

    const-string v2, "CSISOLATINGREEK"

    invoke-static {v1, v2, v0}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ECMA-118"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ELOT_928"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "GREEK"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "GREEK8"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-7"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-126"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-7"

    invoke-static {v1, v0, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATINHEBREW"

    const/4 v1, 0x0

    const-string v2, "ISO8859_8"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "HEBREW"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-8"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-8-I"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-138"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-8"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "CSISOLATIN5"

    const-string v2, "ISO8859_9"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-8859-9"

    const/4 v1, 0x1

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-IR-148"

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO_8859-9"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "L5"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "LATIN5"

    invoke-static {v2, v0, v1}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS"

    const-string v1, "CSISO2022JP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS"

    const-string v1, "ISO-2022-JP"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0201"

    const-string v1, "CSISO13JISC6220JP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0201"

    const-string v1, "X0201"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0208"

    const-string v1, "CSISO87JISX0208"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0208"

    const-string v1, "ISO-IR-87"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0208"

    const-string v1, "X0208"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0208"

    const-string v1, "X0208DBIJIS_X0208-1983"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0212"

    const-string v1, "CSISO159JISX02121990"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0212"

    const-string v1, "ISO-IR-159"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "JIS0212"

    const-string v1, "X0212"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "KOI8_R"

    const-string v1, "CSKOI8R"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "KOI8_R"

    const-string v1, "KOI8-R"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "KSC5601"

    const-string v1, "EUC-KR"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "MS932"

    const-string v1, "CSWINDOWS31J"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "MS932"

    const-string v1, "WINDOWS-31J"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "SJIS"

    const-string v1, "CSSHIFTJIS"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "SJIS"

    const-string v1, "MS_KANJI"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "SJIS"

    const-string v1, "SHIFT_JIS"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "TIS620"

    const-string v1, "TIS-620"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "UNICODE"

    const-string v1, "UTF-16"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "UTF-16BE"

    const-string v1, "UTF-16BE"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "UTF-16BE"

    const-string v1, "UTF_16BE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "ISO-10646-UCS-2"

    const-string v1, "ISO-10646-UCS-2"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "UTF-16LE"

    const-string v1, "UTF-16LE"

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "UTF-16LE"

    const-string v1, "UTF_16LE"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "UTF8"

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lj5/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lj5/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    sget-object p2, Lj5/b;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lj5/b;->b:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method
