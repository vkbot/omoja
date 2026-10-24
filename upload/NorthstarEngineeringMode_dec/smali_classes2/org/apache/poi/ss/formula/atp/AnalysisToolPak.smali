.class public final Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;
    }
.end annotation


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _functionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->createFunctionsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    return-void
.end method

.method private createFunctionsMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "ACCRINT"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ACCRINTM"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "AMORDEGRC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "AMORLINC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "AVERAGEIF"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/AverageIf;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "AVERAGEIFS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Averageifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BAHTTEXT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BESSELI"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BESSELJ"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/BesselJ;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BESSELK"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BESSELY"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BIN2DEC"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BIN2HEX"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "BIN2OCT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COMPLEX"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Complex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CEILING.MATH"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/CeilingMath;->instance:Lorg/apache/poi/ss/formula/functions/CeilingMath;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CEILING.PRECISE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/CeilingPrecise;->instance:Lorg/apache/poi/ss/formula/functions/CeilingPrecise;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CONCAT"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/TextFunction;->CONCAT:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CONVERT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUNTIFS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUPDAYBS"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUPDAYS"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUPDAYSNC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUPNCD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUPNUM"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COUPPCD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COVARIANCE.P"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Covar;->instanceP:Lorg/apache/poi/ss/formula/functions/Covar;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "COVARIANCE.S"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Covar;->instanceS:Lorg/apache/poi/ss/formula/functions/Covar;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBEKPIMEMBER"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBEMEMBER"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBEMEMBERPROPERTY"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBERANKEDMEMBER"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBESET"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBESETCOUNT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUBEVALUE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUMIPMT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "CUMPRINC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DAYS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Days;->instance:Lorg/apache/poi/ss/formula/functions/Days;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DEC2BIN"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DEC2HEX"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DEC2OCT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DELTA"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Delta;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DISC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DOLLARDE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/DollarDe;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DOLLARFR"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/DollarFr;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "DURATION"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "EDATE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "EFFECT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "EOMONTH"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ERF"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ERFC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "FACTDOUBLE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/FactDouble;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "FLOOR.MATH"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/FloorMath;->instance:Lorg/apache/poi/ss/formula/functions/FloorMath;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "FLOOR.PRECISE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/FloorPrecise;->instance:Lorg/apache/poi/ss/formula/functions/FloorPrecise;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "FORECAST.LINEAR"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Forecast;->instance:Lorg/apache/poi/ss/formula/functions/Forecast;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "FVSCHEDULE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "GCD"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Gcd;->instance:Lorg/apache/poi/ss/formula/functions/Gcd;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "GESTEP"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "HEX2BIN"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "HEX2DEC"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Hex2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "HEX2OCT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IFERROR"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/IfError;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IFNA"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/IfNa;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IFS"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/Ifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMABS"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMAGINARY"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Imaginary;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMARGUMENT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMCONJUGATE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMCOS"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMDIV"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMEXP"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMLN"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMLOG10"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMLOG2"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMPOWER"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMPRODUCT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMREAL"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/ImReal;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMSIN"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMSQRT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMSUB"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "IMSUM"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "INTRATE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ISEVEN"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_EVEN:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ISODD"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_ODD:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "JIS"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "LCM"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Lcm;->instance:Lorg/apache/poi/ss/formula/functions/Lcm;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "MAXIFS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Maxifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "MDURATION"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "MINIFS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Minifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "MROUND"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/MRound;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "MULTINOMIAL"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NETWORKDAYS"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NOMINAL"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NORM.DIST"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/NormDist;->instance:Lorg/apache/poi/ss/formula/functions/NormDist;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NORM.S.DIST"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/NormSDist;->instance:Lorg/apache/poi/ss/formula/functions/NormSDist;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NORM.INV"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/NormInv;->instance:Lorg/apache/poi/ss/formula/functions/NormInv;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NORM.S.INV"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/NormSInv;->instance:Lorg/apache/poi/ss/formula/functions/NormSInv;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "NUMBERVALUE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/NumberValueFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "OCT2BIN"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "OCT2DEC"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Oct2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "OCT2HEX"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ODDFPRICE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ODDFYIELD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ODDLPRICE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "ODDLYIELD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "PERCENTRANK.EXC"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/PercentRankExcFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "PERCENTRANK.INC"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/PercentRankIncFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "POISSON.DIST"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Poisson;->instance:Lorg/apache/poi/ss/formula/functions/Poisson;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "PRICE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "PRICEDISC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "PRICEMAT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "QUOTIENT"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Quotient;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "RANDBETWEEN"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "RECEIVED"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "RTD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "SERIESSUM"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "SINGLE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Single;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "SQRTPI"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Sqrtpi;->instance:Lorg/apache/poi/ss/formula/functions/Sqrtpi;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "STDEV.S"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/Stdevs;->instance:Lorg/apache/poi/ss/formula/atp/Stdevs;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "STDEV.P"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/Stdevp;->instance:Lorg/apache/poi/ss/formula/atp/Stdevp;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "SUMIFS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "SWITCH"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/Switch;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "TBILLEQ"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "TBILLPRICE"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "TBILLYIELD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "T.DIST"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/TDistLt;->instance:Lorg/apache/poi/ss/formula/functions/TDistLt;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "T.DIST.2T"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/TDist2t;->instance:Lorg/apache/poi/ss/formula/functions/TDist2t;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "T.DIST.RT"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/TDistRt;->instance:Lorg/apache/poi/ss/formula/functions/TDistRt;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "TEXTJOIN"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/TextJoinFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "WEEKNUM"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "WORKDAY"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "WORKDAY.INTL"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/WorkdayIntlFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "XIRR"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "XLOOKUP"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/XLookupFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "XMATCH"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/XMatchFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "XNPV"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "YEARFRAC"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {p0, v0, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "YIELD"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "YIELDDISC"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "YIELDMAT"

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "VAR.S"

    sget-object v1, Lorg/apache/poi/ss/formula/atp/Vars;->instance:Lorg/apache/poi/ss/formula/atp/Vars;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    const-string v0, "VAR.P"

    sget-object v1, Lorg/apache/poi/ss/formula/atp/Varp;->instance:Lorg/apache/poi/ss/formula/atp/Varp;

    invoke-static {p0, v0, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    return-object p0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    instance-of v3, v3, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    if-eqz v3, :cond_0

    instance-of v3, v3, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static isATPFunction(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    invoke-direct {p2, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 2

    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->isATPFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " is a built-in Excel function. Use FunctionEval.registerFunction(String name, Function func) instead."

    invoke-static {p0, v0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, " is not a function from the Excel Analysis Toolpack."

    invoke-static {p0, v0}, La4/a;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v1, v1, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "POI already implements "

    const-string v1, ". You cannot override POI\'s implementations of Excel functions"

    invoke-static {v0, p0, v1}, Landroidx/activity/result/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 1

    const-string v0, "_xlfn."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-object p0
.end method
