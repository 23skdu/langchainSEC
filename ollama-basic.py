#!/usr/bin/env python3
import sys
from langchain_community.llms import Ollama
llm = Ollama(model="tinyllama")
prompt = sys.argv[1]
response = llm.invoke(prompt)
print(response)

