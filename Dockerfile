FROM python:latest
LABEL author=23skdu@users.noreply.github.com
RUN set +x && apt update && apt -y upgrade && apt -y install netcat-traditional 
RUN pip3 install langchain-chroma chromadb psycopg2 argparse requests langchain agentops[langchain] yaml_include yfinance googlefinance seaborn keras numpy pandas matplotlib tensorflow[and-cuda] scikit-learn plotly  
#COPY tool /bin
CMD ["nc","-l", "8888"]
#CMD ["python","-c", "print('works')"] 
