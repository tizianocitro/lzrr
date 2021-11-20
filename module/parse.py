import os


def parseInput(rootPath="", method="lzrr"):
    inputPath = f"{rootPath}/input/"
    outputPath = f"{rootPath}/output/"
    resultPath = f"{rootPath}/results/"

    for root, dirs, files in os.walk(inputPath):
        for filename in files:
            outputFilePath = f"{outputPath}{filename}.{method}"
            inputFilePath = f"{inputPath}{filename}"
            resultFilePath = f"{resultPath}{filename}.txt"
            os.system(buildCommand(inputFilePath, outputFilePath, method, resultFilePath))
        print("Compressed")


def buildCommand(inputFilePath="", outputFilePath="", method="lzrr", resultFilePath=""):
    if (inputFilePath != "" and outputFilePath != "" and resultFilePath != ""):
        command = f"./lzrr_impl/build/compress.out -i {inputFilePath} -m {method} -o {outputFilePath} > {resultFilePath}"
        return command
